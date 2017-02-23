module WatsonLanguage
	class << self
		def autherize
			"#{ENV['username']}:#{ENV['password']}"
		end
	end
end