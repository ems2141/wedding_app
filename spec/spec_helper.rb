ENV['RACK_ENV'] = 'test'
require 'sequel'

DB = Sequel.connect('postgres://gschool_user:password@localhost/wedding_guests_test')

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end
