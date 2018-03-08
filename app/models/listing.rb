class Listing
  attr_accessor :location, :description
  @@all = []

  def initialize(location, description)
    @location = location
    @description = description
    @@all << self
  end

  def self.all
    @@all
  end

  def reservations
    Reservation.all.select do |reservation|
      reservation.listing == self
    end
  end

  def users
    reservations.map { |reservation| reservation.user }
  end

  def average_stay
    nights_array = reservations.map do |reservation|
      reservation.nights
    end

    (nights_array.sum.to_f / reservations.count).round(1)
  end

  def eldest_guest
    users.max_by {|user| user.age }
  end

  def self.most_popular
    self.all.max_by {|listing| listing.reservations.count}
  end

end
