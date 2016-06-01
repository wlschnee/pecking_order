class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  include ActionView::Helpers::DateHelper

  def timestamp
    time_ago_in_words(self.created_at) + ' ago'
  end

end
