class CreateUserPromises < ActiveRecord::Migration[5.1]
  def change
    create_table :user_promises do |t|

      t.timestamps
    end
  end
end
