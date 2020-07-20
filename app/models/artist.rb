class Artist
  @@all = []
  attr_reader :name, :years_experience
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    Artist.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map {|gallery| gallery.city}.uniq
  end

  def self.total_experience
    Artist.all.reduce(0) {|sum_years, artist| sum_years + artist.years_experience}.to_i
  end

  def self.most_prolific
    Artist.all.max_by {|artist| artist.paintings.count / artist.years_experience.to_f}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
