class Vehicle
    attr_reader :year, :model
    attr_accessor :color, :speed
    @@garage = 0
    
    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model
        @speed = 0
        @@garage += 1
    end

    def speed_up
        self.speed += 1
    end
    def brake
        self.speed > 0 ? self.speed -= 1 : self.speed = 0
    end
    def shut_off
        self.speed = 0
    end

    def spray_paint(new_color)
        @color = new_color
    end
    def to_s 
        "Your #{@year} #{@color} #{self.model} looks wonderful!"
    end

    def self.gas_mileage(miles, gallon)
        gas_mileage = miles / gallon
        return gas_mileage
    end
    def self.garage
        @@garage
    end
end

class MyCar < Vehicle    
    NUMBER_OF_DOORS = 4
    def initialize(year, color, model)
        super(year, color, model)
    end
end

class MyTruck < Vehicle
    NUMBER_OF_DOORS = 2
    def initialize(year, color, model)
        super(year, color, model)
    end
end

jerry = MyCar.new(2009, "black", "corolla")
jerry.speed_up
jerry.speed_up
p jerry

jerry.brake
p jerry

jerry.shut_off
p jerry

p jerry.color
p jerry.year

jerry.spray_paint("white")
puts jerry

puts MyCar.gas_mileage(34,1)

cybertruck = MyTruck.new(2021, "silver", "cybertruck")

puts Vehicle.garage