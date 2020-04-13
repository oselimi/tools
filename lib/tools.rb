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
      black: {
        color: 0,
        multiplier: 1,
        tolerance: 20
      },
      brown: {
        color: 1,
        multiplier: 10,
        tolerance: 1
      },
      red: {
        color: 2,
        multiplier: 100,
        tolerance: 2
      },
      orange: {
        color: 3,
        multiplier: 1000,
        tolerance: 0.2
      },
      yellow: {
        color: 4,
        multiplier: 10_000,
        tolerance: 0.05
      },
      green: {
        color: 5,
        multiplier: 100_000,
        tolerance: 0.5
      },
      blue: {
        color: 6,
        multiplier: 1_000_000,
        tolerance: 0.25
      },
      violet: {
        color: 7,
        multiplier: 10_000_000,
        tolerance: 0.10
      },
      gray: {
        color: 8,
        multiplier: 100_000_000,
        tolerance: 0.05
      },
      white: {
        color: 9,
        multiplier: 1_000_000_000,
        tolerance: 10
      },
      gold: {
        multiplier: 0.1,
        tolerance: 5
      },
      silver: {
        multiplier: 0.01,
        tolerance: 10
      }
   }.freeze

    def initialize(colors)
      @color1, @color2, @multiplier, @tolerance = colors
    end

    def base
      color(@color1) * 10 + color(@color2)
    end

    def specification
      "#{base * multiplier} ohms +/- #{tolerance}%"
    end

    private

    def multiplier
      COLORS[@multiplier.downcase.to_sym][:multiplier]
    end

    def tolerance
      @tolerance.nil? ? 20 : COLORS[@tolerance.downcase.to_sym][:tolerance]
    end

    def color(color_key)
      COLORS[color_key.downcase.to_sym][:color]
    end
  end

  class Armstrong

    def initialize(number)
      @number = number
    end

    def valid?
      sum == number
    end

    private

    def sum
      digits.sum {|digit| digit**size}
    end

    def number
      @number.abs
    end

    def digits
      number.digits
    end

    def size
      digits.size
    end
  end

  class Antipodes
    def initialize(num)
      @num = num
    end

    def adntipodes_average
      divide
    end

    private

    def two_parts
      @num.length / 2
    end

    def left
      @num.first(two_parts)
    end

    def right
      @num.last(two_parts).reverse
    end

    def divide
      (0..(two_parts - 1)).map { |elem| (left[elem] + right[elem]) / 2.0 }
    end
  end

  class Choco
    def initialize(person1, person2)
      @person1 = person1
      @person2 = person2
    end

    def valid?
      person_1 == person_2
    end

    private

    def sum_array_1
      @person1.map {|elem1, elem2| elem1 * elem2 }
    end

    def total_1
      sum_array_1.sum {|elem| elem }
    end

    def person_1
      total_1
    end

    def sum_array_2
      @person2.map {|elem1, elem2| elem1 * elem2 }
    end

    def total_2
      sum_array_2.sum {|elem| elem }
    end

    def person_2
      total_2
    end
  end
end