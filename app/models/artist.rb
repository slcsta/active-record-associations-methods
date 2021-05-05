class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    #Artist (get first song - from db so songs) .songs.first
    #get instance's genre so .genre
    self.songs.first.genre
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.count 
  end

  def genre_count
    #return the number of genres associated with the artist
    self.genres.count
  end
end
