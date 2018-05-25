class AddAmountToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :amount, :integer
  end
end
