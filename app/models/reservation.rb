class Reservation
  attr_reader :user, :listing, :nights
  @@all = []

  def initialize(user, listing, nights)
    @user = user
    @listing = listing
    @nights = nights
    @@all << self

  end

  def self.all
    @@all
  end
end
