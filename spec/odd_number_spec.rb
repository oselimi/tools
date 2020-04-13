RSpec.describe Tools::Odd_number do
  it 'first integer would be(-1)' do
    arr = Tools::Odd_number.new([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5, 5])
    expect(arr.oddnum).to eq(-1)
  end

  it ' all the integers would be ([-1,5]) ' do
    arr = Tools::Odd_number.new([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5, 5])
    expect(arr.oddnum_2).to eq([-1, 5])
  end

  it 'first integer would be(10)' do
    arr = Tools::Odd_number.new([10])
    expect(arr.oddnum).to eq(10)
  end

  it ' all the integers would be ([10])' do
    arr = Tools::Odd_number.new([10])
    expect(arr.oddnum_2).to eq([10])
  end
end