local enemy = ...

-- Blue pig soldier.

sol.main.load_file("enemies/generic_soldier")(enemy)
enemy:set_properties({
  main_sprite = "enemies/blue_pig_soldier",
  sword_sprite = "enemies/blue_pig_soldier_sword",
  life = 3,
  damage = 2,
  play_hero_seen_sound = true,
  hurt_style = "monster"
})