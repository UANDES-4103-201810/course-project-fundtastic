# Preview all emails at http://localhost:3000/rails/mailers/fund_mailer
class FundMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/fund_mailer/fund_confirmation
  def fund_confirmation
    FundMailer.fund_confirmation
  end

end
