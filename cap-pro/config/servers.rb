SSHKit::Backend::Netssh.configure do |ssh|
  ssh.ssh_options = {
    :user => 'root',
    :password => 'passroot',
  }
end
 
# roleにホスト名がchefとopenvzの複数を指定するように変更してみた。
role :client, %w{chef openvz}
