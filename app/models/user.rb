class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :users_name,    presence: true
  validates :profile,       presence: true
  validates :belongs,       presence: true
  validates :position,      presence: true
  
end
