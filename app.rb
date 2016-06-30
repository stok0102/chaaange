require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @money = params.fetch('money').coin_collect()
  erb(:result)
end
