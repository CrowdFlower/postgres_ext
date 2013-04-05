require 'spec_helper'

describe 'Range migrations' do
  let!(:connection) { ActiveRecord::Base.connection }
  after { connection.drop_table :data_types }
  context 'Numeric range' do
    it 'creates an numrange column' do
      lambda do
        connection.create_table :data_types do |t|
          t.numeric_range :num_range_1
          t.numeric_range :num_range_2, :num_range_3
          t.column :num_range_4, :numeric_range
        end
      end.should_not raise_exception

      columns = connection.columns(:data_types)
      num_range_1 = columns.detect { |c| c.name == 'num_range_1'}
      num_range_2 = columns.detect { |c| c.name == 'num_range_2'}
      num_range_3 = columns.detect { |c| c.name == 'num_range_3'}
      num_range_4 = columns.detect { |c| c.name == 'num_range_4'}

      num_range_1.sql_type.should eq 'numrange'
      num_range_2.sql_type.should eq 'numrange'
      num_range_3.sql_type.should eq 'numrange'
      num_range_4.sql_type.should eq 'numrange'
    end
  end
end
