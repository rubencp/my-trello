class WelcomeController < ApplicationController
  def index
    @rutas = RouteRecognizer.new.initial_path_segments

  end
end
