class CreateUserPromises < ActiveRecord::Migration[5.1]
  def change
    create_table :user_promises do |t|
      t.references :user, foreign_key: true
      t.references :promise, foreign_key: true
      t.boolean :stagemail
      t.boolean :stageaprove
      t.boolean :stagereceive


      t.timestamps
    end
  end
end
