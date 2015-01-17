require "spec_helper"

describe Kindara::Account do
  let("account") do
    described_class.new(account_name)
  end

  let("account_name") do
    "Holly"
  end

  describe "#name" do
    let("name") do
      account.name
    end

    it "returns the name" do
      expect(name).to eq(account_name)
    end
  end
end
