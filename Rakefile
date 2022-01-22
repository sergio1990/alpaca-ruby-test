task :environment do
  require File.expand_path('lib/alpaca_device/alpaca_api.rb', File.dirname(__FILE__))
end

desc "Print out routes"
task :routes => :environment do
  AlpacaAPI.routes.each do |route|
    method = route.request_method.ljust(10)
    path = route.path
    puts "#{method} #{path}"
  end
end

