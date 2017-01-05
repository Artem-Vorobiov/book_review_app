require 'test_helper'

class BookMailerTest < ActionMailer::TestCase
  test "book_added" do
    mail = BookMailer.book_added
    assert_equal "Book added", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
