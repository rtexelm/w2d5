require_relative "passenger"

class Flight
    
    attr_reader :passengers
    
    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = Array.new
    end

    def full?
        @passengers.size >= @capacity
    end

    def board_passenger(passenger)
        unless self.full? || !passenger.has_flight?(@flight_number)
            @passengers << passenger
        end
    end

    def list_passengers
        @passengers.map(&:name)
    end

    def [](index)
        @passengers[index]
    end

    def <<(passenger)
        board_passenger(passenger)
    end

end

            