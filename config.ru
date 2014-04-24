require_relative 'application'
require 'sequel'

DB = Sequel.connect('postgres://gschool_user:password@localhost/wedding_guests_development')
run Application