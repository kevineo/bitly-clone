class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	validates_format_of :long_url, :with => URI::regexp(%w(http https))
	before_create :shorten
	

	def shorten
		short = SecureRandom.hex(4)
		self.shortened_url = "#{short}"
	end

	def add_click_count
		self.click_count += 1
		self.save
	end
end



