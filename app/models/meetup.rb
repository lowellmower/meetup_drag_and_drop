class Meetup

  def self.get_events
    params = { category: '1',
      city: 'London',
      country: 'GB',
      status: 'upcoming',
      format: 'json',
      page: '50'}
    meetup_api = MeetupApi.new
    events = meetup_api.open_events(params)
    events
  end

end

# "64685f47755242b72696f315757254"


# RMeetup::Client.api_key = "64685f47755242b72696f315757254"
# results = RMeetup::Client.fetch(:events,{:zip => "11205"})
# # results.each do |result|

# # end
# results
