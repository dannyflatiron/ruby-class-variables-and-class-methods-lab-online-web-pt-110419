class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genre = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genre << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @genres.uniq!
  end
end
