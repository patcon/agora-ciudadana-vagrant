name "agora-ciudadana"
run_list [
  "recipe[apt]",
  "recipe[vim]",
  "recipe[git]",
  "recipe[rabbitmq]",
  "recipe[agora-ciudadana]",
]
