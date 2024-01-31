class PublicController < ApplicationController
  def index
    @songs = Song.by_recent
  end
end
