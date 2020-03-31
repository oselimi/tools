RSpec.describe Tools::Resistors do
  let(:resistor) { Tools::Resistors}

  it "resistor has number 7 output is color['violet]" do
    expect(resistor.value(['violet'])).to eq(7)
  end
  it "resistors has number 10 output is ['brown','black']" do
      expect(resistor.value(['brown','black'])).to eq(10)
    end

  it "resistors has numbers 64 output is ['blue', 'yellow']" do
      expect(resistor.value(['blue','yellow'])).to eq(64)
  end

  it "resistors has number 15 output is ['brown','green',';violet']" do
      expect(resistor.value(['brown','green','violet'])).to eq(15)
  end
end