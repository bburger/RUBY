def game_play(round, user_wins, comp_wins)

	puts "Round # #{round.length}"
	puts "Enter Rock, Paper or Scissors"
	g1 = gets.chomp.capitalize

	comp_choice = ["Rock", "Paper", "Scissors"]
	comp1 = comp_choice.sample

	if g1 == comp1
		puts "DRAW! You: #{g1} - Computer: #{comp1}"
		puts " "
	else

		if g1 == "Rock"
			if comp1 == "Scissors"
				puts "WIN! User: #{g1} - Computer:#{comp1}"
				puts " "
				user_wins.push(1)
			elsif comp1 == "Paper"
				puts "LOSS! User:#{g1} - Computer:#{comp1}"
				puts " "
				comp_wins.push(1)
			end
		end

		if g1 == "Paper"
			if comp1 == "Rock"
				puts "WIN! User: #{g1} - Computer:#{comp1}"
				puts " "
				user_wins.push(1)
			elsif comp1 == "Scissors"
				puts "LOSS! User:#{g1} - Computer:#{comp1}"
				puts " "
				comp_wins.push(1)
			end
		end

		if g1 == "Scissors"
			if comp1 == "Paper"
				puts "WIN! User: #{g1} - Computer:#{comp1}"
				puts " "
				user_wins.push(1)
			elsif comp1 == "Rock"
				puts "LOSS! User:#{g1} - Computer:#{comp1}"
				puts " "
				comp_wins.push(1)
			end
		end
	end
end

user_wins = []
comp_wins = []
round = []


puts "Rock, Paper, Scissors is the game."
puts " "

puts "Would you like to play to wins or by rounds?"
preference = gets.chomp.downcase

if preference == "wins"
	puts "How many wins would you like to play until?"
	wins_pref = gets.to_i

	until user_wins.length == wins_pref or comp_wins.length == wins_pref do round.push(1)
	game_play(round, user_wins, comp_wins)
	end

elsif preference == "rounds"
	puts "How many rounds would you like to play?"
	rounds_pref = gets.to_i
	
	until round.length == rounds_pref do round.push(1)
	game_play(round, user_wins, comp_wins)
	end

else
	puts "I'm sorry, '#{preference}' is not a selectable game mode."
	puts "The computer wins automatically.  Try again."

end



if user_wins.length > comp_wins.length
	puts " "
	puts " "
	puts "Congratulations! You won in #{round.length} games!"
	puts "User: #{user_wins.length} - Computer: #{comp_wins.length}"
else
	puts " "
	puts " "
	puts "Sorry! The computer beat you in #{round.length} rounds!"
	puts "User: #{user_wins.length} - Computer: #{comp_wins.length}"
end
