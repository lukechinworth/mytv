class Time
  def self.today
    today = Time.now
    year = today.year
    month = today.month
    day = today.day
    date = year.to_s + "-" + month.to_s + "-" + day.to_s
  end
end
