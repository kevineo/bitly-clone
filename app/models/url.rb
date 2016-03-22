class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	def shorten(url)
		short = SecureRandom.hex(4)
		self.shortened_url = "#{short}"
	end

	def validate
		validates :url, presence: true
	end


end



