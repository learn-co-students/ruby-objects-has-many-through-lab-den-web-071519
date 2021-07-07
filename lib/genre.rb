class Genre 
    @@all = []
    attr_accessor :name
    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song|song.genre}
    end

    def artists
        artists = []
        songArray = songs
        songArray.each do |song|
            artists << song.artist
        end
        artists
    end
end