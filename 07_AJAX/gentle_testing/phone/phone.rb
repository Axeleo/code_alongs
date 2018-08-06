class Phone

	def initialize(string)
		@number = string
	end

	def number
		@number = @number.gsub(/\D/, '')
		if @number.start_with?('1') && @number.length == 11
			@number.slice!(0)
		end
		if @number.length == 11 || @number.length < 10
			return "0000000000"
		end
		@number
	end

	def area_code 
		@number[0..2]
	end

	def to_s
		"(#{@number[0..2]}) #{@number[3..5]}-#{@number[6..9]}"
	end

end