class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genre = []
  @@artist = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genre << genre
    @@artist << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genre.uniq!
  end

  def self.artists
    @@artist.uniq!
  end

  
end
