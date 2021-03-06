module SongsHelper
  def artist_id_field(song)
    if song.artist.nil?
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
      hidden_field_tag "song[artist_id]", song.artist_id
    end
  end

  def edit_link(song)
    if song.artist.nil?
      link_to "Edit Song", edit_song_path(song)
    else
      link_to "Edit Song", edit_artist_song_path(song.artist, song)
    end
  end
end
