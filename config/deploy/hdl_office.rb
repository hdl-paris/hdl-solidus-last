set :stage, :hdl_office
set :rails_env, :production

server '192.168.1.160',
       user: 'deployer',
       port: 22,
       roles: %w{web app db},
       primary: true
       # ssh_options: {
       #     user: 'deployer', # overrides user setting above
       #     keys: %w(~/.ssh/id_rsa),
       #     forward_agent: true
       # }

set :nginx_server_name, 'solidus-current.hdl www.solidus-current.hdl'

