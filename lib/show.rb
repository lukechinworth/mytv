class Show < ActiveRecord::Base
require 'open-uri'
@doc = Nokogiri::XML(open("http://services.tvrage.com/feeds/fullschedule.php?country=US"))

  def self.today
    @doc.xpath("/schedule/DAY[@attr='#{Time.today}']/time/show")
  end

end
