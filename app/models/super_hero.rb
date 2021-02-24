class Superhero

    @@all = []
    attr_accessor :name, :power, :biography
    def initialize(name, power, biography)
        self.name = name
        self.power = power
        self.biography = biography
        @@all << self
    end

    def self.all
        @@all
    end

end
