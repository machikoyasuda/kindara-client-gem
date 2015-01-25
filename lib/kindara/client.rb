module Kindara
  class Client

    def initialize(request)
      @request = request
    end

    def to_hash
      {"token" => get_token}
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