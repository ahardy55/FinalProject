class RepresenativeController < ApplicationController
  require 'congress'

  def index
  	Congress.key = '0ef8e130fe124b69a2388d253fd05e63'
  	legislators = Congress.legislators_locate(current_user.zip)["results"]
  	@representative = legislators.select { |leg| leg.chamber == "house" }[0]
  
  	@grade = Grade.find_by_user_id_and_bioguide_id(current_user.id, @representative.bioguide_id)
  	@repcomments = Repcomment.find_all_by_bioguide_id(@representative.bioguide_id)
  	@votes = Congress.votes["results"]
  end
end
