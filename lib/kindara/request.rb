module Kindara
  class Request

    ENDPOINT = "https://kindara-app.appspot.com/api"

    def initialize(resource, action, payload)
      @resource = resource
      @action = action
      @payload = payload
    end

    def call
      JSON.parse(HTTP.post(uri, :json => payload).to_s)
    end

    def uri
      "#{endpoint}/#{resource}.#{action}"
    end

    def endpoint
      ENDPOINT
    end

    def resource
      @resource
    end

    def action
      @action
    end

    def payload
      @payload
    end
  end
end
