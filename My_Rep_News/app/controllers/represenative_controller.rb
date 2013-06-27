class RepresenativeController < ApplicationController
  require 'congress'
  #pulls data from Sunlight foundation congress API, using 'congress' Ruby Gem
  def index
  	Congress.key = '0ef8e130fe124b69a2388d253fd05e63'
  	#locating the congressmen by the logged on users zip code
  	legislators = Congress.legislators_locate(current_user.zip)["results"]
  	#isolating HOUSE (as opposed to House + Senate). Returning house member listed
  	#in the event more than one appear
  	@representative = legislators.select { |leg| leg.chamber == "house" }[0]
    #commented out aborted grading system
  	#@grade = Grade.find_by_user_id_and_bioguide_id(current_user.id, @representative.bioguide_id)
  	#sets up comments system
  	@repcomments = Repcomment.find_all_by_bioguide_id(@representative.bioguide_id)
  	#pulls recent votes from Sunlight API
  	@votes = Congress.votes["results"]
  end
end
