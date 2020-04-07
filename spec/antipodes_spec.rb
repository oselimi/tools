RSpec.describe Tools::Antipodes do

  it 'array [1,2,3,4] should be true' do
    num = Tools::Antipodes.new([1, 2, 3, 4])
    expect(num.adntipodes_average).to eq([2.5, 2.5])
  end

  it 'array [1,2,3,4,5] should be true' do
    num = Tools::Antipodes.new([1, 2, 3, 4, 5])
    expect(num.adntipodes_average).to eq([3, 3])
  end

  it 'array [1,2,3] should be true' do
    num = Tools::Antipodes.new([1, 2, 3])
    expect(num.adntipodes_average).to eq([2.0])
  end

  it 'array [-1,2,3] should be true' do
    num = Tools::Antipodes.new([-1, 2, 3])
    expect(num.adntipodes_average).to eq([1.0])
  end
end