class Activity < ActiveRecord::Base
  belongs_to :user

  def self.list_athlete_activities
      strava.list_athlete_activities
  end

end
