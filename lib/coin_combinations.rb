require('pry')

class String
  def coin_collect
    coins = {
      25 => 'quarters',
      10 => 'dimes',
      5 => 'nickels',
      1 => 'pennies'
    }

    denomination_array = []

    moneys = self.to_i

    coins.each do |key,value|
      if moneys >= key
        denomination_array.push(moneys/key, value)
        moneys = moneys.%(key)
      end
    end

    denomination_string = denomination_array.join(" ")
    # binding.pry
  end
end
