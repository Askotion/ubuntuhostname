#========== Hashes ========#

QuestionsInHash = {
  "Wie Teuer ist das Produkt in der Herstellung?" => 0,
  "Wie schwer ist das Produkt?" => 0,
  "Hier ist noch eine Frage" => 0

}

#========= Methodes ==========#

def clear

sleep(1)
system("clear")
puts "==============> Produkt Auswertung <============"
sleep(1)

end


def questions(question, points)

QuestionsInHash[question] = points

end


#======== Variables ========#

points = 0
QuestionCount = 0

#========= Main ==========#


#while QuestionCount <= 1 
#	clear
#	puts QuestionsInHash[1]
#	points = gets.chomp
#	questions(QuestionInHash[QuestionCount], points)
#
#	questionCount += 1
#end

QuestionsInHash.each { |x, y|

	clear
	puts x
	points = gets.chomp
	questions(x, points)

}

clear

puts ""
QuestionsInHash.each { |x, y|

	puts x, y


}
puts ""

