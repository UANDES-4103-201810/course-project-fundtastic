require 'test_helper'

class FundMailerTest < ActionMailer::TestCase
  test "fund_confirmation" do
    mail = FundMailer.fund_confirmation
    assert_equal "Fund confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
