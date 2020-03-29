class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :owned_products, class_name: "Product", foreign_key: "user_id"
  has_many :biddings, class_name: "Bidding", foreign_key: "user_id"
  has_many :bidding_products, through: :biddings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true
  validates :phone_number, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
