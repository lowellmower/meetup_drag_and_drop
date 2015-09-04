class WelcomeController < ApplicationController

  def index
    @events ||= nil
  end

  def get_events
    @events = Meetup.get_events
    redirect root_path
  end

end
