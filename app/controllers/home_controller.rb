class HomeController < ApplicationController
  def index
    @bleats = Bleat.all
    @bleat = Bleat.new
  end
end
