class Project < Fume::Settable::Base
  ruby_provider Rails.root.join("config/settings.local.rb")

  def self.method_missing(name, *args, &block)
    settings.send(name, *args, &block)
  end
end
