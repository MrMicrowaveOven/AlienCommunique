require_relative 'spec_helper.rb'

describe "#get_number_array" do
  it "converts basic binary" do
    expect(binary_to_decimal(101)).to eq(5)
  end
  it "converts basic non-symmetric binary" do
    expect(binary_to_decimal(1011)).to eq(11)
  end

end
