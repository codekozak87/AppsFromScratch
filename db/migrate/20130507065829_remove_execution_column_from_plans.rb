class RemoveExecutionColumnFromPlans < ActiveRecord::Migration
  def change
  	remove_column :plans, :execution

  end
end
