require "spec_helper"

describe Kindara::Account do
  let("account") do
    described_class.new(account_username)
  end

  let("account_username") do
    "Holly"
  end

  describe "#username" do
    let("username") do
      account.username
    end

    it "returns the name" do
      expect(username).to eq(account_username)
    end
  end
end
