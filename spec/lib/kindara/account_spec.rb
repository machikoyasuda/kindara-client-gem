require "spec_helper"

describe Kindara::Account do
  let("payload") do
    { "username" => "Holly",
      "average_cycle" => 32,
      "average_luteal" => 14,
      "average_period" => 3}
  end

  let("account") do
    described_class.new(payload)
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

  describe "#average_cycle" do
    it "returns a number" do
      expect(account.average_cycle).to be_kind_of(Integer)
    end
  end
end
