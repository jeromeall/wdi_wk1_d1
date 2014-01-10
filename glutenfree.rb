
pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]

class AllergyError < ArgumentError
end

class Person

	def initialize(stomach=[], allergies="", name="")
		@stomach = stomach
		@allergies = allergies
		@name = name
	end

	def eat(meals)
		person_full_stomach = @stomach
		meals.each do |meal_ingredient|
			if meal_ingredient == @allergies
				begin
					raise AllergyError.new("Do NOT EAT #{meal_ingredient} ... Unless you want a visit from your friend, the EpiPen.")
				rescue AllergyError => e 
					puts ("#{e}")
				end
			else 
				person_full_stomach << meal_ingredient 
			end
			puts "MMM MMM GOOD! Similiar to Drake, that was the best #{person_full_stomach} I've ever had"
		end
	end
end	

chris = Person.new([],"gluten", "chris")
puts
puts "Chris says:"
chris.eat(pizza)
chris.eat(pan_seared_scallops)
chris.eat(water)

beth = Person.new([],"scallops", "beth")
puts
puts "Beth says:"
beth.eat(pizza)
beth.eat(pan_seared_scallops)
beth.eat(water)

# psuedo code

# done. create a person class
# done. make person have stomach and allergies
# done. create method that allows person to eat
# done. make whatever they eat go into stomach as an array
# done. if they eat something they're allergic to, reject from stomach (don't add to array)
# done. create the person chris 
# done. make chris allergic to gluten
# done. feed chris 
# done. create the person 
# done. beth make beth allergic to scallops
# done. feed beth

