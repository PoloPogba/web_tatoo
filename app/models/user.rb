class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end


devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :devis
  validates :first_name, presence: true
  validates :last_name, presence: true

end
