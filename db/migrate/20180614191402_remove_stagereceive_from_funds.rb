class RemoveStagereceiveFromFunds < ActiveRecord::Migration[5.1]
  def change
    remove_column :funds, :stagereceive, :boolean
  end
end
