class Item

    def self.valid_date?(date)
        ymd = date.split("-")

        unless ymd.length != 3 
            y = ymd[0].to_i
            m = ymd[1].to_i
            d = ymd[2].to_i
            return true if (1..12).include?(m) && (1..31).include?(d)
        end

        false
    end

    attr_accessor :title, :deadline, :description

    def initialize(title, deadline, description)
        unless Item.valid_date?(deadline)
            raise ArgumentError.new "Dates must be entered as YYYY-MM-DD"
        end

        @title = title
        @deadline = deadline
        @description = description
    end

    def deadline=(new_deadline)
        unless Item.valid_date?(new_deadline)
            raise ArgumentError.new "Dates must be entered as YYYY-MM-DD"
        end
        
        @deadline = new_deadline
    end

end



