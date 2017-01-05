class User < ApplicationRecord
  after_create :email_user

  has_many :books
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def email_user
    UserMailer.signup_confirmation(current_user).deliver
  end
end
