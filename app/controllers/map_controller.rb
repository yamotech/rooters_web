class MapController < ApplicationController
  def index
    @arenas = Arena.all
    @hash = Gmaps4rails.build_markers(@arenas) do |arena, marker|
      marker.lat arena.latitude
      marker.lng arena.longitude
      marker.infowindow arena.url
      marker.json({ title: arena.arena_name })
    end
  end
end
