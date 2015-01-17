module Kindara
  class Account

    def self.authenticate(email, password)
      account = Kindara::Request.new("account", "auth", {"email" => email, "password" => password}).call
      new(account.fetch("name"))
    end

    def initialize(name)
      @name = name
    end

    def name
      @name
    end
  end
end
