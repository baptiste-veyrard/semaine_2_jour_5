require 'launchy'

puts "Début du programme"

def check_if_user_gave_input
	abort("mkdir: missing input") if ARGV.empty?
	puts ARGV.join("+")
	return ARGV
end

def url_launch(input)
	input = ARGV.join("+")
	Launchy.open("https://www.google.com/search?q=#{input}")
end

def perform
	input = check_if_user_gave_input
	url_launch(input)
end

perform

puts "Fin du programme"