class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :image_url
  has_one_attached :avatar

  after_create :welcome_send
  after_create :cart_user

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  def cart_user
    Cart.create(user: self)
  end
  validates :first_name, presence: true
  validates :last_name, presence: true
end
