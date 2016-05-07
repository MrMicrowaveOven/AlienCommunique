require_relative 'spec_helper.rb'

describe "#convert_binary" do
  it "converts a line of spaces and Xs into a number" do
    expect(convert_binary("X  X")).to eq(9)
  end
  it "converts basic non-symmetric binary" do
    expect(binary_to_decimal("X XX")).to eq(11)
  end
end
