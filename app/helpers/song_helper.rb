module SongHelper
  def song_path(song)
    rails_storage_proxy_path(ActiveStorage::Blob.find_by(key: song.blob_key))
  end
end