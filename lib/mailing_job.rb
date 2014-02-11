class MailingJob < Struct.new(:current_user, :current_message)

	def perform
		Mailer.deliver.spoof_email(@message, @user)
	end
end
