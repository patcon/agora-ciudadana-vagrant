application "agoro-ciudadana" do
  path "/var/www/agora-ciudadana"
  repository "https://github.com/agoraciudadana/agora-ciudadana.git"
  revision "v2.1.x"
  packages [
    "gettext",
  ]

  django do
    requirements "requirements.txt --upgrade"
    #migrate true
    #migrate_command "./manage.py syncdb --all"
  end
end
