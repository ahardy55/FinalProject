class RepresenativeController < ApplicationController
   require 'congress'

  def index
  	Congress.key = '0ef8e130fe124b69a2388d253fd05e63'
  	legislators = Congress.legislators_locate(current_user.zip)["results"]
  	@representative = legislators.select { |leg| leg.chamber == "house" }[0]
  end
end
