# Q0: Why is this error being thrown?
-- There wasn't a Pokemon controller (and corresponding Pokemon model).

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

--There are currently 4 pokemons in the database (from the seed.db file); namely pikachu, bulbasaur, charmander, squirtle, and these pokemons do not belong to any trainers yet. So, on home_controller route, these pokemons are ".sample"-ed (randomly picked) and rendered via the home/index.html.erb file.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

--This creates a button with the text "throw a pokeball!" that creates a PATCH request to the '/capture' URL with the id of the current pokemon as params. This id passed through the params is then used by the pokemons controller to "capture" and update that pokemon's attribute such that that pokemon's trainer_id attribute now becomes that of the logged-in user's.

# Question 3: What would you name your own Pokemon?

-- DiDi

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

--redirect_to "/trainers/" + current_trainer.id.to_s , the path needed the currently logged-in user's id converted to a string.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

-- This line of code translates the error's full error message (either blank or taken name) into a sentence and then places it at the top of the form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
