class User < ActiveRecord::Base
	has_many :messages

	validates :first_name,
		presence: true

	validates :last_name,
		presence: true

	validates :email,
		presence: true

	validates :password_digest,
		presence: true

	validates :phone_number,
		presence: true

  	has_secure_password

  	  include ActiveModel::Validations
  attr_accessor :name, :email


  validates :email, :presence => true, :email => true 
  
end

u = User.new
u.name = "hallelujah"
u.email = "john@doe.com"
u.valid? # => true

u.email = "john@doe"
u.valid? # => false

u.email = "John Does <john@doe.com>"
u.valid? # => false