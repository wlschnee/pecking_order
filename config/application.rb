require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PeckingOrder
  class Application < Rails::Application
    config.time_zone = "Eastern Time (US & Canada)"
    config.active_record.raise_in_transactional_callbacks = true
    config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag.html_safe }  end
end
