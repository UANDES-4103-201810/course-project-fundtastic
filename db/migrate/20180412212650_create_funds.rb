class CreateFunds < ActiveRecord::Migration[5.1]
  def change
    create_table :funds do |t|
	t.references :user, foreign_key: true
	t.references :project, foreign_key: true
	t.integer :cost
	t.boolean :stagemail
	t.boolean :stageaprove
	t.boolean :stagereceive

      t.timestamps
    end
  end
end
