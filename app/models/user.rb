class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :recipient, class_name: "User", foreign_key: "recipient_id"
  has_one :wishlist

  validates :wishlist, presence: true, if: :recipient?

  def recipient?
    is_organiser == false
  end
end
