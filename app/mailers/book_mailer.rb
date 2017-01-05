class BookMailer < ApplicationMailer
  default from: "test@example.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.book_mailer.book_added.subject
  #
  def book_added(email)
    @email = email

    mail to: @email, subject: "Bood added"
  end
end
