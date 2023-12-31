class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   has_many :notes, dependent: :destroy

   validates :name,          presence: true
   validates :email,         presence: true
   validates :password,      presence: true, format: { with:  /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
end
