class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  delegate :location_id, :start_time, :meeting_place, :duration, :host_id, :name, :to => :event, :prefix => true
  include ActionView::Helpers::DateHelper

  def timestamp
    time_ago_in_words(self.created_at) + ' ago'
    # time_elapsed = (Time.now - self.created_at.to_time)/1.minute
    # if time_elapsed < 60 && time_elapsed == 1
    #   "Commented #{time_elapsed.round} minute ago"
    # elsif time_elapsed < 60
    #   "Commented #{time_elapsed.round} minutes ago"
    # elsif time_elapsed >= 60
    #   time_elapsed = (Time.now - self.created_at.to_time)/1.hour
    #   if time_elapsed == 1
    #     "Commented #{time_elapsed.round} hour ago"
    #   else
    #     "Commented #{time_elapsed.round} hours ago"
    #   end
    # else
    #   @comment.created_at.strftime("%a, %b %-d, %Y, %I:%M %p")
    # end
  end

end

# .strftime("%a, %b %-d, %Y, %I:%M %p")
