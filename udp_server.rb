require 'socket'
server = UDPSocket.new
host, port = "127.0.0.1", 1234
server.bind(host, port)

while true
  text, sender = server.recvfrom(16)
  remote_port = sender[1]
  remote_host = sender[3]
  puts sender
  server.send "{\"alpacaport\": 9000}", 0, remote_host, remote_port
end
