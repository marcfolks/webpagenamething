def change(cents_received)
	coins = {}

		if cents_received >= 25
			coins[:quarter] = cents_received / 25
			cents_received = cents_received % 25
		end
		if cents_received >= 10
			coins[:dime] = cents_received / 10
			cents_received = cents_received % 10
		end
		if cents_received >= 5
			coins[:nickel] = cents_received / 5
			cents_received = cents_received % 5
		end
		if cents_received >= 1
			coins[:penny] = cents_received / 1
		end
	coins
end

def hashconverter(coins)
	change = ""
	coins.each do |key, value|
		change << " " + value.to_s + " " + key.to_s
	end
	change
end