require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []
  
  
  extend Memorable::ClassMethods
  extend Memorable::InstanceMethods
  extend Findable
  include Paramble

  def initialize 
    super
    @@artists << self
    @songs = []
  end


  def self.all
    @@artists
  end

  def add_song(song)
    self.class.all << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
