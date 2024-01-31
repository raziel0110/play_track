module Api
  module V1
    class SongsController < ApplicationController
      def index
        render json: { message: 'test' }, status: 200
      end
    end
  end
end