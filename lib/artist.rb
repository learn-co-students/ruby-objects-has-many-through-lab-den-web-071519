require 'pry'

class Artist
    @@all = []
    attr_accessor :name
    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song name, genre
        return Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        genres = []
        songArray = songs
        songArray.each do |song|
            genres << song.genre
        end
        genres
    end
end