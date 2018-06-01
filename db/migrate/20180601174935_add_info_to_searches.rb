class AddInfoToSearches < ActiveRecord::Migration[5.1]
  def change
    add_column :searches, :info, :string
  end
end
