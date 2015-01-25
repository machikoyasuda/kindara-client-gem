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
    end

    def username
      @username
    end
  end
end
