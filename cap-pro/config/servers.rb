SSHKit::Backend::Netssh.configure do |ssh|
  ssh.ssh_options = {
    :user => 'root',
    :password => 'passroot',
  }
end
# ホスト名がcapistranoのサーバを追加
role :client, %w{chef openvz}
 

