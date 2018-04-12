class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
    t.string :title
    t.string :category
    t.integer :daytogo
    t.integer :cost
    t.text :description
    t.integer :userid
    t.string :promises
    t.integer :progressamount
      t.timestamps
    end
  end
end
