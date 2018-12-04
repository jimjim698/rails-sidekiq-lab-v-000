class SongsWorker

  def perform(songs_file)
    CSV.foreach(songs_file, headers: true) do |s|
     a = Song.find_or_create_by(title: s[0])
     a.artist = Artist.find_or_create_by(name: s[1])
     a.save
   end
  end

end
