class Comment < ActiveRecord::Base
	validates :comment, :length => {:minimum => 10, :maximum => 200}
	validate :check_email_address

	def check_email_address
		unless email =~ /\A[a-z0-9]+@[a-z0-9]\.(com|net|org)\z/i
			errors.add(:email, 'is not valid')
		end
	end
end
