class User < ApplicationRecord
  #validates :email, presence: true

  validates :uname, :password, :email, :address, :phno, presence: true
  validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
 validates :phno, length: { maximum: 10 }
 validates :phno, numericality: { only_integer: true }

end
