class HomepagesController < ApplicationController
  def index
    @announcements = Announcement.order(:title)
    
    if params[:announcement_id].present?
      @announcements = Announcement.find params[:announcement_id]
    else
      @announcement = Announcement.all
    end
  end
end
