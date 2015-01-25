module Kindara
  class Day

    def self.pull(client)
      Kindara::Request.new("day", "pull", client.to_hash_with_cycle_days).call.fetch("days").map do |day|
        new(day)
      end
    end

    def initialize(payload)
      @date = payload.fetch("date")
      @updated = payload.fetch("updated", nil)
      @cycle_day = payload.fetch("cycle_day", nil)
      @temperature = payload.fetch("temperature", nil)
      @questionable_temp = payload.fetch("questionable_temp", nil)
      @temp_shift = payload.fetch("temp_shift", nil)
      @no_fluid = payload.fetch("no_fluid", nil)
      @fluid_sticky = payload.fetch("fluid_sticky", nil)
      @fluid_creamy = payload.fetch("fluid_creamy", nil)
      @fluid_eggwhite = payload.fetch("fluid_eggwhite", nil)
      @fluid_watery = payload.fetch("fluid_watery", nil)
      @cervix_height = payload.fetch("cervix_height", nil)
      @cervix_openness = payload.fetch("cervix_openness", nil)
      @cervix_firmness = payload.fetch("cervix_firmness", nil)
      @opk = payload.fetch("opk", nil)
      @peak_day = payload.fetch("peak_day", nil)
      @sex = payload.fetch("sex", nil)
      @first_day = payload.fetch("first_day", nil)
      @menstruation = payload.fetch("menstruation", nil)
      @custom = payload.fetch("custom", nil)
      @notes = payload.fetch("notes", nil)
    end

  end
end