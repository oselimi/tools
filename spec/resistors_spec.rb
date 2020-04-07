  RSpec.describe Tools::Resistors do
  it '' do
    resistor = Tools::Resistors.new(['brown','white'])
    expect(resistor.base).to eq(19)
  end

  it '' do
    resistor = Tools::Resistors.new(['green', 'blue'])
    expect(resistor.base).to eq(56)
  end

  it '' do
    resistor = Tools::Resistors.new(['gray', 'orange'])
    expect(resistor.base).to eq(83)
  end

  it '' do
    resistor = Tools::Resistors.new(['black', 'yellow', 'red', 'white'])
    expected = '400 ohms +/- 10%'
    expect(resistor.specification).to eq expected
  end

  it '' do
    resistor = Tools::Resistors.new(['blue', 'white', 'violet', 'orange'])
    expected = '690000000 ohms +/- 0.2%'
    expect(resistor.specification).to eq expected
  end
end