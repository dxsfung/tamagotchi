require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tamagotchi")
require("pry")

get("/") do
    erb(:index)
end

get("/name") do
    @@my_pet=Tamagotchi.new(params.fetch('name'))
    erb(:new)
end

get("/upfood") do
    @food_level=@@my_pet.add_food_level
    erb(:new)
end

get("/upsleep") do
    @sleep_level=@@my_pet.add_sleep_level
    erb(:new)
end

get("/upactivity") do
    @activity_level=@@my_pet.add_activity_level
    erb(:new)
end
