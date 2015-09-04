class Meetup

  def self.get_events
    params = {
      category: '34',
      zip: '11205',
      status: 'upcoming',
      format: 'json',
      page: '30'
    }
    meetup_api = MeetupApi.new
    events = meetup_api.open_events(params)
    Meetup.filter_json(events)
  end

  def self.filter_json(response)
    i = 0
    results = []
    while i < response["results"].length
      event = {}
      event["name"] = response["results"][i]["name"]
      event["event_url"] = response["results"][i]["event_url"]
      event["yes_rsvp_count"] = response["results"][i]["yes_rsvp_count"]
      results << event
      i+=1
    end
    results
  end

end

# "64685f47755242b72696f315757254"
