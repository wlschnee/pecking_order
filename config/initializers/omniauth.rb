if Rails.env == 'development' || Rails.env == 'test'
  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, ENV['DEV_FACEBOOK_KEY'], ENV['DEV_FACEBOOK_SECRET'],
      image_size: 'large', display: 'popup'
  end
else
  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
      :image_size => 'large', :display => 'popup'
  end
end
