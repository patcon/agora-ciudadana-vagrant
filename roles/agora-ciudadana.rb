name "agora-ciudadana"
run_list [
  "recipe[apt]",
  "recipe[git]",
  "recipe[python]",
  "recipe[platform_packages]",
  "recipe[rabbitmq]",
]
default_attributes({
  :platform_packages => {
    :pkgs => [
      { :name => "gettext" },
      { :name => "virtualenvwrapper" },
    ]
  }
})
