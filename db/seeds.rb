
require 'rest-client'


Spell.destroy_all
CasterClass.destroy_all

bard = CasterClass.create(name: "Bard")
cleric = CasterClass.create(name: "Cleric")
druid = CasterClass.create(name: "Druid")
paladin = CasterClass.create(name: "Paladin")
ranger = CasterClass.create(name: "Ranger")
sorcerer = CasterClass.create(name: "Sorcerer")
warlock = CasterClass.create(name: "Warlock")
wizard = CasterClass.create(name: "Wizard")



resp = RestClient::Request.execute(method: :get,
  url:'https://api.open5e.com/spells/?limit=400',
  headers:{
    'Content-Type': 'application/json'
  })

  spell_data = JSON.parse(resp.body)

  spells = spell_data["results"]

  
 spells.each do |spell, attribute|
    Spell.create(
      name: spell["name"],
      desc: spell["desc"],
      higher_level: spell["higher_level"],
      range: spell["range"],
      components: spell["components"],
      material: spell["material"],
      ritual: spell["ritual"],
      duration: spell["duration"],
      concentration: ["concentration"],
      casting_time: spell["casting_time"],
      level: spell["level"],
      level_int: spell["level_int"],
      school: spell["school"],
      dnd_class: spell["dnd_class"],
      archetype: spell["archetype"],
      circles: spell["circles"]      
      )
  end