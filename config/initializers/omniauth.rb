
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :developer unless Rails.env.production?
  #provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  #provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"]
  provider :twitter, "ryGjZpGKAioRXFfHyWPmf8YJP", "RNQbNdpHU2ZqrY6zbECudS8fQxzES4rxiYSOncMbps8YJ6GXvW"
  provider :google_oauth2, "97339291889-aahheg752rm9jnl0o245tuq0cp0upkr7.apps.googleusercontent.com", "Su7PLSRjtKE8qfjN8NB2Quin",
           {
               #:name => "google",
               #:scope => "email, profile, plus.me, http://gdata.youtube.com",
               :prompt => "select_account",
               :image_aspect_ratio => "square",
               :image_size => 50
           }

  #provider :identity, on_failed_registration: lambda { |env|
  #  IdentitiesController.action(:new).call(env)
  #}
end

