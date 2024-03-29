Paperclip.options[:command_path] = '/usr/local/bin' 
Paperclip.configure do |config|
  config.root               = Rails.root # the application root to anchor relative urls (defaults to Dir.pwd)
  config.env                = Rails.env  # server env support, defaults to ENV['RACK_ENV'] or 'development'
  config.use_dm_validations = true       # validate attachment sizes and such, defaults to false
  config.processors_path    = 'lib/pc'   # relative path to look for processors, defaults to 'lib/paperclip_processors'
end
