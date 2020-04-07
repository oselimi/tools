RSpec.describe Tools::Armstrong do

  it 'validate that 9 is an Armstrong number' do
    armstrong = Tools::Armstrong.new(9)
    expect(armstrong.valid?).to be true
  end
  it 'validate that 10 is not an Armstrong number' do
    armstrong = Tools::Armstrong.new(10)
    expect(armstrong.valid?).to be false
  end
  it 'validate that 153 is an Armstrong number' do
    armstrong = Tools::Armstrong.new(153)
    expect(armstrong.valid?).to be true
  end
  it 'validate that 154 is not an Armstrong number ' do
    armstrong = Tools::Armstrong.new(154)
    expect(armstrong.valid?).to be false
  end
  it 'converts negative numbers to positive number berfore the check' do
    armstrong = Tools::Armstrong.new(-153)
    expect(armstrong.valid?).to be true
  end
end