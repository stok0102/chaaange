require('pry')

class Fixnum
  def coin_collect
    coins = {
      25 => 'quarter',
      10 => 'dime',
      5 => 'nickel',
      1 => 'penny'
    }

    denomination_array = []

    moneys = self

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
