class Song
  attr_accessor :name, :artist, :genre
      @@count = 0
      @@artists = []
      @@genres = []
      # @@genre_count = {}



   def initialize(name, artist, genre)
       @name = name
       @genre = genre
       @artist = artist

       @@artists << artist
       @@genres << genre
       @@count += 1
      #  @@genre_count

   end


      def self.count
        @@count
      end
      def self.genre
        @@genre.uniq
      end
      def self.artists
        @@artists.uniq
      end
      def self.genre_count
        genre_count = Hash.new(0)
        @@genres.each { |genre| genre_count[genre] +=1  }
        return genre_count
      end

      def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each { |artist| artist_count[artist] +=1  }
        return genre_count
      end


end
