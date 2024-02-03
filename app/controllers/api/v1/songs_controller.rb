module Api
  module V1
    class SongsController < ApplicationController
      def index
        songs = SongsCollectorService.new.call
        render json: { message: 'test', songs: songs }, status: 200
      end
    end
  end
end