RSpec.describe Tools::Luhn do
  it "doese`t allow to be one number" do
    str = Tools::Luhn.new('3')
    expect(str.valid?).to be false
  end

  it "doese`t allow to be empty" do
    str = Tools::Luhn.new(' ')
    expect(str.valid?).to be false
  end

  it "doesen`t allow single zero" do
    str = Tools::Luhn.new('0')
    expect(str.valid?).to be false
  end

  it "does allow to be 059" do
    str = Tools::Luhn.new('059')
    expect(str.valid?).to be true
  end

  it "become invalid if digits reversed" do
    str = Tools::Luhn.new('59')
    expect(str.valid?).to be true
  end

  it "is valids  sin number" do
    str = Tools::Luhn.new('055 444 285')
    expect(str.valid?).to be true
  end

  it "is inculde string in the end" do
    str = Tools::Luhn.new('059a')
    expect(str.valid?).to be false
  end

  it "is inculde non digit string" do
    str = Tools::Luhn.new('055a-444-285')
    expect(str.valid?).to be false
  end

  it "is inculde symbols" do
    str = Tools::Luhn.new('05£ 44$ 285')
    expect(str.valid?).to be false
  end

  it "is has space from zero" do
    str = Tools::Luhn.new(' 0')
    expect(str.valid?).to be false
  end

  it "is more single zero" do
    str = Tools::Luhn.new('0000 0')
    expect(str.valid?).to be true
  end

  it "is string with non digits" do
    str = Tools::Luhn.new(':9')
    expect(str.valid?).to be false
  end
end