I18n.config.enforce_available_locales = true
I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]
I18n.available_locales = [:'pt-BR', :en]
I18n.default_locale = :"pt-BR"
