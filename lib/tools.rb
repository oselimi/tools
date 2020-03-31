require "tools/version"

module Tools
  class Allergies
    ALLERGENS = {
      1 => 'eggs',
      2 => 'peanuts',
      4 => 'shellfish',
      8 => 'strawberries',
      16 => 'tomates',
      32 => 'chocolate',
      64 => 'pollen',
      128 => 'cats'
    }

    def initialize(score)
      @score = score
    end

    def allergic_to?(allergen)
      #ALLERGENS[@score] == allergen

      score_allergens.include?(allergen)

    end

    def score_allergens
      allergen_keys.map {|key| ALLERGENS[key] }
    end

    private

    def total_score
        @score -= 256 while @score >= 256
        @score
    end
    def keys
       ALLERGENS.keys.select{ |item| item <= total_score }.sort.reverse!
    end

    def allergen_keys
      tmp = total_score
      keys.select{ |elem| tmp >= elem && tmp -= elem }
    end
  end

  class Resistors

    COLORS = {
     'black' => '0',
     'brown' => '1',
     'red' => '2',
     'orange' => '3',
     'yellow' => '4',
     'green' => '5',
     'blue' => '6',
     'violet' => '7',
     'gray' => '8',
     'white' => '9'
    }.freeze

    def self.value(color_bands)
      color1 = COLORS[color_bands[0]]
      color2 = COLORS[color_bands[1]]
      [color1, color2].join.to_i
    end
  end
end
