require 'sinatra'
require_relative 'coin_changer.rb'
require_relative 'names.rb'
get'/' do
	erb :index
end
post'/money' do
	inputamount =params[:jingle].to_i
    coins = change(inputamount)
	stuff = hashconverter(coins)
 	redirect '/money?inputamount=' + inputamount.to_s + '&stuff=' + stuff.to_s
  	end
get '/money' do
	inputamount = params[:jingle]
	coins = change(inputamount )
	stuff = hashconverter(coins)
	erb :coinpage, :locals => { :stuff => stuff, :inputamount => inputamount,:coins=>coins }

 end
# post'/money' do
# 	money = params[:money]
# 	redirect '/?money=' + money 
# 	end










