## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
def get_url(pokemon, poke_name)
  pokemon.each do |poke|
    if poke[:name] == poke_name
      return poke[:abilities][0][:ability][:url]
  end
end
end
# How would you return the first pokemon with base experience over 40?
def find_experience(pokemon)
  experience = []
  pokemon.each do |poke|
    experience << poke[:base_experience]
    end
    experienced = experience.find_index(experience.detect  {|i| i > 40 })
    pokemon[experienced]
end
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
def find_all_experience(pokemon)
  experience = []
  answer = []
  pokemon.each do |poke|
    if poke[:base_experience] > 40
    experience << poke[:base_experience]
    experience.each do |exp|
      if poke[:base_experience] == exp
        answer << poke
      end
    end
  end
end
  answer
end
# How would you return an array of all of the pokemon's names?
def find_names(pokemon)
  names = []
  pokemon.each do |poke|
    names << poke[:name]
  end
  names
end
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
def find_weight(pokemon)
  weights = []
  pokemon.each do |poke|
    weights << poke[:weight]
  end
  weights.any?{|weight| weight > 60}
end
