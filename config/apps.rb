Padrino.configure_apps do
  # enable :sessions
  set :session_secret, 'b697310f24eda8ae5f4e6ff8542c4aaa630e43199648d571f1f66b4215e5766b'
end

# Mounts the core application for this project
Padrino.mount("Bct").to('/')
