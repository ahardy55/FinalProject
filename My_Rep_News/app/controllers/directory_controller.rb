class DirectoryController < ApplicationController
  require 'congress'
   
   def index
  	Congress.key = '0ef8e130fe124b69a2388d253fd05e63'
  	@all_representatives = Congress.legislators(chamber: "house", per_page: "all")["results"]
  end

  def search 
  	@representatives = Congress.legislators(chamber: "house", query: params[:search])["results"]
  end
end
