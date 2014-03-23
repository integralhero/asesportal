OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '420896674713340', '3a2b4c2cab9ad1bfba33d573af90fb78'
end