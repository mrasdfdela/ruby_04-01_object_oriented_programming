class Vehicle
    attr_reader :year, :model
    attr_accessor :color
    
    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model
    end

    def to_s 
        "Your #{@year} #{@color} #{self.model} looks wonderful!"
    end    attr_accessor :speed

    def self.gas_mileage(miles, gallon)
        gas_mileage = miles / gallon
        return gas_mileage
    end
end

class MyCar < Vehicle    
    NUMBER_OF_DOORS = 4
    attr_accessor :speed
    def initialize(speed)
        @speed = 0
    end

    def spray_paint(new_color)
        @color = new_color
    end
    def to_s 
        "Your #{@year} #{@color} #{self.model} looks wonderful!"
    end    attr_accessor :speed

    def initialize(speed)
        @speed = 0
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

end

class MyTruck < Vehicle
    NUMBER_OF_DOORS = 2
    def initialize(grille_guard)
        @grille_guard = false
    end
    def install_guard
        @grille_guard = true
    end
    def remove_guard
        @grille_guard = false
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