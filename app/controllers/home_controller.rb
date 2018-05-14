class HomeController < ApplicationController

    def index
      @listing = Listing.paginate(:page => params[:page], :per_page => 6).order('updated_at DESC')
    end
  
  end