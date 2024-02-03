class SongsCollectorService
  def call
    keys
  end

  private

  def keys
    Song.by_recent.pluck(:blob_key)
  end
end