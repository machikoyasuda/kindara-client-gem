require "spec_helper"

describe Kindara::Request do
  describe ".authenticate" do
    let("authenticate") do
      described_class.authenticate
    end
  end

  describe "#call" do
    let("call") do
      request.call
    end
  end
end
