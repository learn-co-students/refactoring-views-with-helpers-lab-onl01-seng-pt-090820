class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(artist_n)
    n = Artist.find_or_create_by(name: artist_n) 
    self.artist = n
  end
end
