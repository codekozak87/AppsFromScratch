class ChangeColumnNameAndOtherStuff < ActiveRecord::Migration
  def change
  	rename_column :plans, :vertical, :idea_name
  	rename_column :plans, :name, :plan_name
  end

end
