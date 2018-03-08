class User
  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def make_reservation(listing, nights)
    Reservation.new(self, listing, nights)
  end

  def self.all
    @@all
  end

  def reservations
    Reservation.all.select do |reservation|
      reservation.user == self
    end
  end

end
