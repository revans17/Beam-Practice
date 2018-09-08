require "json"

file = File.read "claims.json"
data = JSON.parse(file)
counts = Hash.new 0
data.each do |npi|
     counts[npi]+1
end

puts data.first['npi']
puts data.last['npi']
