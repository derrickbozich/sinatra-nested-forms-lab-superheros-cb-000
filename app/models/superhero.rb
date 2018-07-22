class Superhero
  attr_accessor :name, :power, :bio

  def initialize(params)
    @name = params[:team][:superheroes][:name]
    @power = params[:team][:superheroes][:power]
    @bio = params[:team][:superheroes][:bio]
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end
end
