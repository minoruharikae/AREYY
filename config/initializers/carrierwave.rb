require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    region: ENV['S3_REGION'], 
    aws_access_key_id: ENV['S3_ACCESS_KEY'],
    aws_secret_access_key: ENV['S3_SECRET_KEY'],
    secret_key_base: ENV["SECRET_KEY_BASE"]
  }

  config.fog_directory  =  ENV['S3_BUCKET']
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/areyy'
end