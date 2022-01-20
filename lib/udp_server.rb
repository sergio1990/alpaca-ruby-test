require 'socket'
server = UDPSocket.new
host, port = "0.0.0.0", 32227
server.bind(host, port)

loop do
  text, sender = server.recvfrom(24)
  puts "RECEIVED: #{text}"
  remote_port = sender[1]
  remote_host = sender[3]
  puts sender
  server.send "{\"alpacaport\": 9000}", 0, remote_host, remote_port
end

server.close
