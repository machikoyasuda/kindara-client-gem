module Kindara
  class Account

    # singleton method goes at the top
    def self.info(client)
      request = Kindara::Request.new("account", "info", client.to_hash).call
      new(request.fetch("name"))
    end

    def initialize(name)
      @name = name
    end

    def name
      @name
    end
  end
end
