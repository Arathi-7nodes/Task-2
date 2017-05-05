class User < ApplicationRecord
  #validates :email, presence: true
has_many :goals
 belongs_to :user
 has_many :tasks
 belongs_to :goal

























  validates :uname, :password, :email, :address, :phno, presence: true
  validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
 validates :phno, length: { maximum: 10 }
 validates :phno, numericality: { only_integer: true }

end
