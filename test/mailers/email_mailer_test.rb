require 'test_helper'

class EmailMailerTest < ActionMailer::TestCase
  test "recepcion" do
    mail = EmailMailer.recepcion
    assert_equal "Recepcion", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
