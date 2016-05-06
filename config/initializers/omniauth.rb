Rails.application.config.middleware.use OmniAuth::Builder do
  provider :strava, Rails.application.secrets.strava_api_key, Rails.application.secrets.strava_api_secret
end
