# encoding: UTF-8

require 'csv'
csv_file = "people.csv"

@personas = []

# Voy a armar un hash en base a los datos
# de cada persona

CSV.foreach(csv_file) do |r|

  @personas << { r[0] =>
    { :edad => r[1], :lenguaje => r[2]}}

end

puts "\nListado de Personas: \n"
puts @personas.inspect

# Quiero el listado de todos los lenguajes
# de Programación

@lenguajes = @personas.map{|p| p.values.first[:lenguaje]}

puts "\nListado de Lenguajes de programación: \n"
puts @lenguajes.uniq.inspect
