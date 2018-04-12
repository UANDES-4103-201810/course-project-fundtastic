class CreateFunds < ActiveRecord::Migration[5.1]
  def change
    create_table :funds do |t|

      t.timestamps
    end
  end
end
