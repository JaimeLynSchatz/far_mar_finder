require 'csv'
market_file = CSV.parse(File.read('markets.csv'))
puts market_file[0][1]

class Market
  def initialize(arr)
    # this just reeks as a bad way of doing this
    # but I don't know another way yet   
    @id = arr[0]
    @name = arr[1]
    @addr = arr[2]
    @city = arr[3]
    @county = arr[4]
    @state = arr[5]
    @zip = arr[6]
  end
end

puts market_file.length
puts "You have #{market_file.length} files"
(0..(market_file.length - 1)).each do |i|
  instance_variable_set("market#{market_file[i][0]}", Market.new(market_file[i]))
end
#
#id
#name
#address
#city
#county
#state
#zip