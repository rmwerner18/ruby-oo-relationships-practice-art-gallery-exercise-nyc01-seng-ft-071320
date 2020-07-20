class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery
  @@all = []

  def initialize(title, price, artist, gallery=nil)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    Painting.all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    Painting.all.reduce(0) {|total, painting| total + painting.price.to_i}
  end
end
