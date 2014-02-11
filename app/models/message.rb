class Message < ActiveRecord::Base
  belongs_to :user

  validates :subject,
  	presence: true

  validates :recipient,
  	presence: true

  validates :recipient_email,
  	presence: true

  validates :recipient_phone_number,
  	presence: true

  validates :text,
  	presence: true

end
