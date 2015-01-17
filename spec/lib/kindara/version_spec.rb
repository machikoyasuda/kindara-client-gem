require "spec_helper"

describe Kindara::VERSION do
  it "should be a string" do
    expect(Kindara::VERSION).to be_kind_of(String)
  end
end
