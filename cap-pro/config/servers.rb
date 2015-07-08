SSHKit::Backend::Netssh.configure do |ssh|
  ssh.ssh_options = {
    :user => 'root',
    # passwordをコメントアウトしてpassphreaseを追加
    # シングルクォートの中はssh-keygenにて指定した文字列を記載
    :passphrase => 'rootpass',
    # :password => '****',
  }
end

role :client, %w{openvz}

