# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.time_zone = 'UTC'

  config.action_controller.session = {
    :session_key => '_errors_session',
    :secret      => '729bdf4f8affcc1dc4cd4e5d8b7c6b8fc91e5341e8a486d5203ed62679e60f0b324f707a36b60c04deb17aa4308e51ebecb440fc92bbb929cc72d87b434d8c8e'
  }

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.smtp_settings = {
    :address  => ENV['SMTP_HOST'],
    :port  => 25,
    :user_name  => ENV['SMTP_USER'],
    :password  => ENV['SMTP_PASS'],
    :authentication  => :login
  }
end
