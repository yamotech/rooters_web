class MapController < ApplicationController
  def index
    @arenas = Arena.all
    @hash = Gmaps4rails.build_markers(@arenas) do |arena, marker|
      marker.lat arena.latitude
      marker.lng arena.longitude
      marker.infowindow arena.arena_name
      marker.json({ title: arena.arena_name })
    end
  end

  def show
    @arena = Arena.find(params[:id])
    @hash = Gmaps4rails.build_markers(@arena) do |arena, marker|
      marker.lat arena.latitude
      marker.lng arena.longitude
      marker.infowindow arena.arena_name
      marker.json({ title: arena.arena_name })
    end
  end
end
