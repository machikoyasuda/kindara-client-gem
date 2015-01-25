module Kindara
  class Account

    # singleton method goes at the top
    def self.info(client)
      new(Kindara::Request.new("account", "info", client.to_hash).call.fetch("account"))
    end

    def self.authenticate(email, password)
      Kindara::Client.new(Kindara::Request.new("account", "auth", {"email" => email, "password" => password}))
    end

    def initialize(payload)
      @username = payload.fetch("username")
      @average_cycle = payload.fetch("average_cycle")
      @average_luteal = payload.fetch("average_luteal")
      @average_period = payload.fetch("average_period")
    end

    def username
      @username
    end

    def average_cycle
      @average_cycle
    end

    def average_luteal
      @average_luteal
    end

    def average_period
      @average_period
    end
  end
end
