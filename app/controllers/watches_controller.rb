class WatchesController < ApplicationController
  def index
    @watches = Watch.all
  end

  def show
    
  end
end