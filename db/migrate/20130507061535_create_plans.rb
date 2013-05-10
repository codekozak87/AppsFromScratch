class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.date :execution
      t.string :vertical
      t.string :problem
      t.string :solution
    end
  end
end
