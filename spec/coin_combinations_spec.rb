require('rspec')
require('coin_combinations')

describe('Fixnum#coin_collect') do
  it('returns the amount of pennies needed') do
    expect(1.coin_collect()).to(eq('1 pennies'))
  end
  it('returns the amount of pennies needed') do
    expect(3.coin_collect()).to(eq('3 pennies'))
  end
  it('returns the amount of pennies and nickels') do
    expect(8.coin_collect()).to(eq('1 nickels 3 pennies'))
  end
  it('returns the amount of pennies, nickels, dimes') do
    expect(18.coin_collect()).to(eq('1 dimes 1 nickels 3 pennies'))
  end
  it('returns the amount of pennies, nickels, dimes, quarters') do
    expect(27.coin_collect()).to(eq('1 quarters 2 pennies'))
  end
  it('returns the amount of change up to a dollar') do
    expect(99.coin_collect()).to(eq('3 quarters 2 dimes 4 pennies'))
  end
end
