require('rspec')
require('coin_combinations')

describe('Fixnum#coin_collect') do
  it('returns the amount of pennies needed') do
    expect(1.coin_collect()).to(eq('1 penny'))
  end
  it('returns the amount of pennies needed') do
    expect(3.coin_collect()).to(eq('3 penny'))
  end
  it('returns the amount of pennies and nickels') do
    expect(8.coin_collect()).to(eq('1 nickel 3 penny'))
  end
end
