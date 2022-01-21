class AscomDevicesDataSource
  class ConfiguredDevice
    attr_reader :name
    attr_reader :type  
    attr_reader :number
    attr_reader :uuid

    def initialize(name:, type:, number:, uuid:)
      @name = name
      @type = type
      @number = number
      @uuid = uuid
    end
  end

  def initialize
    @devices = {}
  end

  def register_device(device)
    normalized_type = device.type.downcase
    devices[normalized_type] ||= []
    devices[normalized_type] << device
  end

  def configured_devices
    devices.map do |normalized_type, registered_devices|
      registered_devices.each_with_index.map do |device, index|
        ConfiguredDevice.new(
          name: device.name,
          type: device.type,
          number: index,
          uuid: device.uuid
        )
      end
    end.flatten
  end

  private

  attr_reader :devices
end
