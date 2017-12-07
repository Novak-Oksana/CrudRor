require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FirstApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # config/initializers/locale.rb

    # где библиотека I18n должна искать наши переводы
    # I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]

    # Белый список локалей, доступных приложению
    I18n.available_locales = [:en, :ru]

    # устанавливаем локаль по умолчанию на что-либо другое, чем :en
   # I18n.default_locale = :en

    config.generators do |g|
      g.test_framework  :rspec, fixtures: true, view: false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
