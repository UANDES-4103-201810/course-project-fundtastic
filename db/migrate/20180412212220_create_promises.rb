class CreatePromises < ActiveRecord::Migration[5.1]
  def change
    create_table :promises do |t|

      t.timestamps
    end
  end
end
