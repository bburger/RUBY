puts "Snowpocalpyse 2016 Supplies"

fridgehash = Hash["milk" => 1, "bread" => 8, "cheese" => 4]

def Check_Stock(fridgehash)
	for key in fridgehash.keys()
		print key
		puts ": #{fridgehash[key]}"
	end
end

def Edit_Stock(fridgehash)
	puts " "

	puts "Choose an item to edit."
	for key in fridgehash.keys()
		puts key
	end
	puts "More Options"
	itemedit = gets.chomp

	if fridgehash.has_key?("#{itemedit}")
		puts "#{fridgehash[itemedit]} units of #{itemedit} in the fridge"
		puts "Enter new value"
		fridgehash["#{itemedit}"] = gets.to_s
		puts "#{itemedit}: #{fridgehash[itemedit]}"

	elsif itemedit == "more options" || itemedit == "more"
		puts "Add Entry | Delete Entry | Modify Entry Name"
		options_edit = gets.chomp.downcase
		
		if options_edit == "add" || options_edit == "add entry"
			puts "Item Name"
			k1 = gets.chomp
			puts "Item Quantity"
			v1 = gets.to_i
			new_item = Hash["#{k1}" => v1]
			fridgehash.merge!(k1 => v1)
			Check_Stock(fridgehash)
		
		elsif options_edit == "delete" || options_edit == "delete entry"
			for key in fridgehash.keys()
				puts key
			end
			puts "Which entry would you like to delete?"
			delete_item = gets.chomp.downcase
			fridgehash.delete(delete_item)

		elsif options_edit == "modify" || options_edit == "modify entry" || options_edit == "modify entry name"
			for key in fridgehash.keys()
				puts key
			end
			puts "Which entry name would you like to change?"
			old = gets.chomp.downcase
			puts "New name"
			new_key = gets.chomp.downcase
			fridgehash["#{new_key}"] = fridgehash.delete("#{old}")

		else
			puts "Try again"
		end

	else
		puts "The item you have selected is not in inventory"
	end

	
end

puts "Do you want to check stock or edit stock? (Or Exit)"
puts " "

	puts "Check Stock  <------------->  Edit Stock"
	choice = gets.chomp.downcase
until choice == "exit"

	if choice == "check" || choice == "check stock"
		puts "Check stock selected."
		Check_Stock(fridgehash)
	elsif choice == "edit" || choice == "edit stock"
		puts "Edit stock selected."
		puts " "

		Edit_Stock(fridgehash)

	else
		puts "Invalid entry"
		puts "Please start over"
	end

	puts "Check Stock  <------------->  Edit Stock"
	puts "(Check) (Edit) (Exit)"
	choice = gets.chomp.downcase

end



