require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    histogram = {}
    @@genres.each do |genre|
      if histogram[genre]
        histogram[genre] += 1
      else
        histogram[genre]
      end
    end
    histogram

      # binding.pry
  end


end
