require 'net/http'
res = Net::HTTP.start(url.host, url.port) {|http|
      http.get('/index.html')
    }

url = URI.parse('http://116.228.215.4:8666/communityfold/users/register')
res = Net::HTTP.start(url.host, url.port) do|http|
      http.post('/communityfold/users/register','{"password":"123456","passwordconfirmation":"123456","name":"atton"}
',{'Content-Type'=>'application/json'} )
end

