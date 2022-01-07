# NOTE: After Rails 6 we cannot use VERSION as a constant name
APP_VERSION = File.read(Rails.root.join("VERSION")).strip.freeze

