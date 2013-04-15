class WeeklyController < ApplicationController
	def index
	@date = Time.now
	@start_date = Date.new(@date.year, @date.month, @date.day) 
	@events = Event.find(:all, :conditions => ['start_at between ? and ?', @start_date, @start_date + 7])
	end
	  def starts_at
          @event = Event.find(params[:id])
	  @event.start_at
    	end
end
