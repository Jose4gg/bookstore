# Limit 40 request per minute per IP address

Rack::Attack.throttle('limit user request', limit: 40, period: 60) do |req|
  req.ip
end