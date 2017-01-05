class BookMailer < ApplicationMailer
  default from: "test@example.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.book_mailer.book_added.subject
  #
  def book_added(email, book)
    @email = email
    @book  = book

    mail to: @email, subject: "Thanks for added book/"
  end
end
