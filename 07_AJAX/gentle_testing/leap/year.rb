class Year

    def initialize(num)
        @num = num
    end

    def leap?
        return true if @num % 100 != 0 && @num % 4 == 0
        return true if @num % 100 == 0 && @num % 400 == 0
        false
    end

end