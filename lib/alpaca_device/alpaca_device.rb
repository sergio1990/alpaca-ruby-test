module AlpacaDevice
  class Configuration
    attr_accessor :devices_data_source
  end

  class << self
    def config
      @config ||= Configuration.new
    end

    def configure
      yield(config)
    end
  end
end
