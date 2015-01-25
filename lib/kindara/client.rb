module Kindara
  class Client

    def initialize(email, password)
      @email = email
      @password = password
      @request = Kindara::Request.new("account", "auth", payload)
      @token = get_token
    end

    def to_hash
      {"token" => @token}
    end

    private def payload
      {"email" => @email, "password" => @password}
    end

    private def get_token
      @request.call.fetch("token")
    end

    # Ruby 2.1+ Has no arguments, every method becomes private

  end
end