require_relative '../config/environments/test'

class UrlImporter
	def self.import
		#csv = File.open(filename)
		File.open(APP_ROOT.join("db", "urls.txt")).each_line do |row|
			Url.create(long_url: row [1..-4])
		end
	end
end


UrlImporter.import