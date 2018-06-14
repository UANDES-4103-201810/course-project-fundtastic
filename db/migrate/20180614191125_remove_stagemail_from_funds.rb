class RemoveStagemailFromFunds < ActiveRecord::Migration[5.1]
  def change
    remove_column :funds, :stagemail, :boolean
  end
end
