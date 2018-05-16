class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :info
      t.integer :goal
      t.integer :daystogo
      t.datetime :release
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
