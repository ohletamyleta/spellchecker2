Spell.destroy_all
Caster_class.destroy_all

bard = Caster_class.create(name: "Bard")
cleric = Caster_class.create(name: "Cleric")
druid = Caster_class.create(name: "Druid")
paladin = Caster_class.create(name: "Paladin")
ranger = Caster_class.create(name: "Ranger")
sorcerer = Caster_class.create(name: "Sorcerer")
warlock = Caster_class.create(name: "Warlock")
wizard = Caster_class.create(name: "Wizard")


require 'rest-client'

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