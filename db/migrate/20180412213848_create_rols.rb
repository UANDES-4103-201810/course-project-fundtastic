class CreateRols < ActiveRecord::Migration[5.1]
  def change
    create_table :rols do |t|

      t.timestamps
    end
  end
end
