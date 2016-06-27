class EventDecorator < SimpleDelegator

  def weekly_time
    date = Date.current 
    start_date = self.start_time.to_date
    start_week = start_date.cweek
    this_week = date.cweek
    start_year = start_date.year
    this_year = date.year 
    if date == start_date
      "Today - " + start_time.strftime("%I:%M %p")
    elsif start_date == date + 1
      "Tomorrow - " + start_time.strftime("%I:%M %p")
     elsif start_week == this_week && start_year== this_year
      "This #{start_date.strftime("%A")} - " + start_time.strftime("%I:%M %p")
    elsif start_week == this_week + 1 && start_year == this_year
      "Next #{start_date.strftime("%A")} - " + start_time.strftime("%I:%M %p")
    else
      start_time.strftime("%a, %b %-d, %Y, %I:%M %p")
    end
  end


end
