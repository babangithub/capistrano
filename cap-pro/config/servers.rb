SSHKit::Backend::Netssh.configure do |ssh|
  ssh.ssh_options = {
    :user => 'root',
#    :passphrase => 'passphrase',
    :password => 'passroot',
  }
end
 
role :client, %w{openvz}

