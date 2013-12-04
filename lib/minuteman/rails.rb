require "minuteman"
require "minuteman/rails/configuration"
require "minuteman/rails/engine"

class Minuteman
  class Rails
    def self.configuration
      @configuration ||= Configuration.new
      yield(@configuration) if block_given?

      @configuration
    end

    def self.analytics
      @analytics ||= Minuteman.new(self.configuration.to_hash)
    end
  end
end

