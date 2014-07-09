require 'sequel'
require 'sequel/adapters/postgres'

db_conf = {:database => 'people', :username => 'rubyfun',
           :password => 'rubyfun', :host     => 'localhost',
           :adapter  => 'postgres' }

DB = Sequel.connect db_conf

class Person < Sequel::Model ; end

Person.delete

p  = Person.create :name => "Bruce",
                  :lang => "Ruby"

p2 = Person.create :name => "Chuck",
                  :lang => "Java"

chuck = Person.first :name => "Chuck"
p chuck.inspect
