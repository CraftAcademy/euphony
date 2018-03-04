class IndexController < ApplicationController
  def index
  end

  def search
    RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'],ENV['SPOTIFY_CLIENT_SECRET'])
    results = RSpotify::Track.search(params[:query])
    id = results.first.id
    @recommendations = RSpotify::Recommendations.generate(seed_tracks: [id]).tracks
    render :index
  end
end
