class User < ActiveRecord::Base
    def self.find_or_create_from_auth_hash(auth_hash)
    user = where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create
    user.update(
    name: auth_hash.info.name,
    profile_img: auth_hash.extra.raw_info.profile,
    city: auth_hash.extra.raw_info.city,
    token: auth_hash.credentials.token
    )
    user
  end

  def self.strava_client
    @strava_client = Strava::Api::V3::Client.new(:access_token => '7d4f3a726c48d81a141ddf538857a442512ab981')
  end

def self.the_list
  strava_client.list_athlete_activities
end

end
