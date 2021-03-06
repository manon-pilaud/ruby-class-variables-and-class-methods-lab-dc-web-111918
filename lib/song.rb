require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize (name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << self.artist
    @@genres << self.genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |g|
      if hash.has_key?(g)
        hash[g] += 1
      else
        hash[g] = 1
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |a|
      if hash.has_key?(a)
        hash[a] += 1
      else
        hash[a] = 1
      end
    end
    hash
  end

end
