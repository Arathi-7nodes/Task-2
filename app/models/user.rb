class User < ApplicationRecord
  #validates :email, presence: true

  validates :uname, :password, :email, :address, :phno, presence: true


end
