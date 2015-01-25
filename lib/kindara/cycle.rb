module Kindara
  class Cycle

    def self.pull(client)
      Kindara::Request.new("cycle", "pull", client.to_hash).call.fetch("cycles").map do |cycle|
        new(cycle)
      end
    end

    def initialize(payload)
      @start = payload.fetch("start")
      @end = payload.fetch("end")
      @updated = payload.fetch("updated")
      @bardo = payload.fetch("bardo")
      @pregnancy = payload.fetch("pregnancy")
      @custom = payload.fetch("custom")
      @temp_shift = payload.fetch("temp_shift")
      @coverline = payload.fetch("coverline")
    end
  end
end