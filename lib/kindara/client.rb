module Kindara
  class Client

    def initialize(request)
      @request = request
    end

    def to_hash
      {"token" => get_token}
    end

    def to_hash_with_cycle_days
      {"token" => get_token, "cycle_day" => "yes"}
    end


    private def get_token
      @request.call.fetch("token")
    end

    # Ruby 2.1+ Has no arguments, every method becomes private

  end
end