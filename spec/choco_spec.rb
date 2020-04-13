RSpec.describe Tools::Choco do
    it 'array should be true' do
      chocolate = Tools::Choco.new([[4, 3], [5, 4], [3, 3]], [[6, 6],[5, 1]])
      expect(chocolate.fairness?).to be true
    end

    it 'array should be false' do
      chocolate = Tools::Choco.new([[2, 4], [1, 2]], [[6, 2], [4, 2]])
      expect(chocolate.fairness?).to be false
    end

    it 'array should be true' do
      chocolate = Tools::Choco.new([[4, 3], [2, 4], [1, 2]], [[6, 2], [4, 2], [1, 1], [1, 1]])
      expect(chocolate.fairness?).to be true
    end

    it 'array should be true' do
      chocolate = Tools::Choco.new([[7, 2], [8, 5], [9, 3]], [[5, 5], [3, 2], [6, 5], [4, 5]])
      expect(chocolate.fairness?).to be true
    end
  end



