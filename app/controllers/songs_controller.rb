class SongsController < ApplicationController
  before_action :authenticate_user!

  def index
    @songs = Song.where(created_at: :desc)
  end

  def new
    @song = Song.new
  end

  def create
    blob = upload_file

    # raise blob.key.inspect
    @song = Song.new({filename: blob.filename, blob_key: blob.key, content_type: blob.content_type})
    if @song.save 
      redirect_to root_path, notice: "Song saved."
    else
      redirect_to :new, alert: "Error saving song."
    end
    
  end

  private

  def upload_file
    ActiveStorage::Blob.create_and_upload!(io: song_params[:song], filename: song_params[:song].original_filename)
  end

  def song_params
    params.require(:song).permit(:song)
  end
end