class StarSystem
  attr_reader :name, :planets

    def initialize(name, planets)
      @name = name
      @planets = planets
    end

    def planet_names
      @planets.map { |planet| planet.name}
    end

    def get_planet_by_name(name)
      @planets.find { |planet| planet.name == name }
    end

    def get_largest_planet
      @planets.max_by { |planet| planet.diameter }
    end

    def get_smallest_planet
      @planets.min_by { |planet| planet.diameter }
    end

    def get_planets_with_no_moons
      @planets.find_all { |planet| planet.number_of_moons == 0 }
    end
end
