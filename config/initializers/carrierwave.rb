CarrierWave.configure do |config|

  config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => ENV["AWS_ACCESS_KEY_ID"],     # required
      :aws_secret_access_key  => ENV["AWS_SECRET_ACCESS_KEY"], # required
  }
  config.fog_directory  = ENV["AWS_S3_BUCKET"]                     # required
  config.fog_public     = true                                # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}

  # For testing, upload files to local `tmp` folder.
  if Rails.env.test? || Rails.env.cucumber?
    config.storage = :file
    config.enable_processing = false
    config.root = "#{Rails.root}/tmp"
  else
    config.storage = :fog
  end

end
