class RemoveStageaproveFromFunds < ActiveRecord::Migration[5.1]
  def change
    remove_column :funds, :stageaprove, :boolean
  end
end
