# Use English as default locale, and Japanese only for admin pages
Rails.application.config.i18n.load_path += \
  Dir[Rails.root.join("config", "locales", "**", "*.yml")]
Rails.application.config.i18n.available_locales = %i(en ja)
Rails.application.config.i18n.default_locale = :ja
Rails.application.config.i18n.fallbacks = [I18n.default_locale]
