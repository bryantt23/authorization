class User < ActiveRecord::Base
  validates :name,  presence: true, length: { maximum: 50 }
                    # ,uniqueness: true
  validates :email, presence: true, length: { maximum: 255 }

  has_secure_password
  validates :password, length: { minimum: 1 }


end
