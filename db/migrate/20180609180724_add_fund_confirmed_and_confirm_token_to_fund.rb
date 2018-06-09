class AddFundConfirmedAndConfirmTokenToFund < ActiveRecord::Migration[5.1]
  def change
    add_column :funds, :fund_confirmed, :boolean ,default:false
    add_column :funds, :confirm_token, :string
  end
end
