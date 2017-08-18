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
	erb :coinpage, :locals => { :stuff => stuff, :inputamount => inputamount,:coins => coins }
  	end


 post '/rpairs' do 
	names = params[:pairs]
	random_pairs = new_pairs(names)
	nwpairs = random_pairs
	erb :names, :locals => {:pairs=>pairs,:nwpairs=>nwpairs}
	end











