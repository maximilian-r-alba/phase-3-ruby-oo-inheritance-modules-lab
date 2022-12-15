require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  extend Memorable::ClassMethods
  extend Memorable::InstanceMethods
  extend Findable
  include Paramble
  def initialize 
   @@songs << self
  end

  def self.all
    @@songs 
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
