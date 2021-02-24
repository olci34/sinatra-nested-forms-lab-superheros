class Team

    attr_accessor :name, :motto
    @@all = []
    def initialize(name, motto)
        self.name = name
        self.motto = motto
        @@all << self
    end

    def self.all
        @@all
    end

end


