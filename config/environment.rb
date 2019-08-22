require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'


require 'bundler/setup'
Bundler.require

# Connect to the database
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)
# Instead of dealing with SQL directly, we provide the migrations we want and Active Record takes care of creating.
require_relative "../artist.rb"