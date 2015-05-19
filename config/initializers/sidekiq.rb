
redis = { namespace: 'anglerfish' }

if %w( test ).include?(Rails.env)
  Sidekiq.logger = Rails.logger
  redis[:namespace] = "anglerfish_#{Rails.env}"
end

Sidekiq.configure_server do |config|
  config.redis = redis
end

Sidekiq.configure_client do |config|
  config.redis = redis
end
