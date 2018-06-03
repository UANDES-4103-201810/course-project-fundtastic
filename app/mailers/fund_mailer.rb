class FundMailer < ApplicationMailer
  default from: "fundtastic2018@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.fund_mailer.fund_confirmation.subject()
  #
  def fund_confirmation(fund,user)
    @user = user
    @fund = fund
    @greeting = "Hi"

    mail to: user.email , subject: "Fund Confirmation"
  end
end
