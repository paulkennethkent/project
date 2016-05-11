class Activity < ActiveRecord::Base
  belongs_to :user

  def strava.list_athlete_activities

  end

end
