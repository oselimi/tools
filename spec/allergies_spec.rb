RSpec.describe Tools::Allergies do
  describe "determine whether or not they`re allegeic to a given item"do
    it "matches the allergen with the score" do
      allergies = Tools::Allergies.new(1)
      expect(allergies.allergic_to?('eggs')).to be true
    end

    it "does not match the allergen with the score" do
      allergies = Tools::Allergies.new(1)
      expect(allergies.allergic_to?('peanuts')).to be false
    end
    it "does not match the allergen with the score" do
     allergies = Tools::Allergies.new(3)
      expect(allergies.allergic_to?('eggs')).to be true
      expect(allergies.allergic_to?('peanuts')).to be true
    end

  end
  describe 'Lists all the allergens'do
    it 'presentes the allergen list'do
      allergies = Tools::Allergies.new(3)
      expected = ['eggs', 'peanuts']

      expect(allergies.score_allergens).to match_array expected
    end
    it 'has no alergens' do
      allergies = Tools::Allergies.new(0)

      expect(allergies.score_allergens).to be_empty
    end
    it "ignores score not listed ind ALLERGENS hash table" do
      allergies = Tools::Allergies.new(257)
      expected = ['eggs']

      expect(allergies.score_allergens).to match_array expected
    end
    it "ignores score not listed ind ALLERGENS hash table" do
      allergies = Tools::Allergies.new(1024)
      expected = []

      expect(allergies.score_allergens).to match_array expected
    end
  end
end