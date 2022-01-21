require_relative './base.rb'

module AscomDevices
  class BaseFocuser < ::AscomDevices::Base
    attr_reader :absolute
    attr_reader :ismoving
    attr_reader :maxincrement
    attr_reader :maxstep
    attr_reader :position
    attr_reader :stepsize
    attr_reader :tempcomp
    attr_reader :tempcompavailable
    attr_reader :temperature

    def initialize(name:, uuid:)
      super(
        meta_info: MetaInfo.new(
          name: name,
          type: ::AscomDevices::Type::FOCUSER,
          uuid: uuid
        )
      )
    end

    def set_tempcomp(tempcomp:)
      raise NotImplementedError
    end

    def set_halt
      raise NotImplementedError
    end

    def set_move(position:)
      raise NotImplementedError
    end
  end
end
