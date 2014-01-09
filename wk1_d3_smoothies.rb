smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

class Blender 
	
	def initialize(smoothie_ingredients, power="OFF")
		@smoothie_ingredients = smoothie_ingredients
		@power = power
	end
		
	def blend(smoothie_ingredients) 
		new_array = smoothie_ingredients.keys
		split_ing = new_array.join.split(" ").join
		shuffle = random_ing(split_ing) 
		p shuffle
	end

 	def random_ing(string)
 		string.split(//).shuffle.join
 	end

	def start()
	puts
	puts "Enter ON if you would like to make a smoothie. Enter NO if you aren't JUICEROUS enough."
	puts
	power = gets.chomp
		until power == "OFF"
			if power == "ON"
				puts
				new_smoothie_hash=@smoothie_ingredients
				blend(new_smoothie_hash)
				puts 
				puts "This is the most JUICEROUS smoothie ever! JUICE-ON!"
				puts "... But remember to turn the blender OFF"
				
				until power == "OFF"
					power = gets.chomp
					puts
					if power == "OFF"
						puts "Thanks for being safe."
					else 
						puts "Please turn the Blender OFF!!!".upcase
					end
				end
			elsif power == "NO"
				puts 
				puts "Not JUICEROUS!!!"
				power = "OFF"
			else
				puts 
				puts "NO SMOOTHIE FOR YOU!!!"
				puts	 
				puts "Please try again: turn blender ON, or enter NO if you aren't JUICEROUS enough?"
				power = gets.chomp
			end
		end
	end
end

smoothie = Blender.new(smoothie_ingredients)
smoothie.start	

# case
	# 	when power == "ON" 
	# 		new_smoothie_hash=@smoothie_ingredients
	# 		blend(new_smoothie_hash)
	# 		puts 
	# 		puts "This is the most JUICEROUS smoothie ever! JUICE-ON!"
	# 		puts "... But remember to turn the smoothie OFF"		
	# 	when power == "OFF"
	# 		puts
	# 		puts "The blender is now turned OFF. Not JUICEROUS!!!"
	# 	else 
	# 		puts 
	# 		puts "NO SMOOTHIE FOR YOU!!!"
	# 	end
	#end
