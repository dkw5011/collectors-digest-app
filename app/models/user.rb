class User < ActiveRecord::Base
    has_secure_password

    has_many :collectables
    validates :email, uniqueness: true
    validates :name, :city, :state, presence: true
end
