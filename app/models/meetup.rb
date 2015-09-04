class Meetup

  def self.get_events
    RMeetup::Client.api_key = "64685f47755242b72696f315757254"
    results = RMeetup::Client.fetch(:events,{:zip => "11205"})
    # results.each do |result|

    # end
    results
  end

end