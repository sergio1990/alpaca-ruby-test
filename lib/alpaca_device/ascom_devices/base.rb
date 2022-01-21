module AscomDevices
  module Type
    CAMERA = "Camera"
    COVER_CALIBRATOR = "CoverCalibrator"
    DOME = "Dome"
    FILTER_WHEEL = "FilterWheel"
    FOCUSER = "Focuser"
    OBSERVING_CONDITIONS = "ObservingConditions"
    ROTATOR = "Rotator"
    SAFETY_MONITOR = "SafetyMonitor"
    SWITCH = "Switch"
    TELESCOPE = "Telescope"
  end

  class MetaInfo
    attr_reader :name, :type, :uuid

    def initialize(name:, type:, uuid:)
      @name = name
      @type = type
      @uuid = uuid
    end
  end

  class Base
    attr_reader :connected
    attr_reader :description
    attr_reader :driverinfo
    attr_reader :driverversion
    attr_reader :interfaceversion
    attr_reader :name
    attr_reader :supportedactions

    attr_reader :type
    attr_reader :uuid

    def initialize(meta_info:)
      @meta_info = meta_info
      @name = meta_info.name
      @type = meta_info.type
      @uuid = meta_info.uuid
    end

    def set_action(action:, parameters:)
      raise NotImplementedError
    end

    def set_commandblind(command:, raw:)
      raise NotImplementedError
    end

    def set_commandbool(command:, raw:)
      raise NotImplementedError
    end

    def set_commandstring(command:, raw:)
      raise NotImplementedError
    end

    def set_connected(connected:)
      raise NotImplementedError
    end
  end
end
