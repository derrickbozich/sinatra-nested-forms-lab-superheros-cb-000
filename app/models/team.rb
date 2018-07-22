class Team
  attr_accessor :name, :motto

  def initialize(name, motto)
    @name = name
    @motto = motto
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end
end
