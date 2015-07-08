# userがroot,パスワードが****にてログインさせる
SSHKit::Backend::Netssh.configure do |ssh|
    ssh.ssh_options = {
    :user =>    'root',
    :password =>    'passroot',
}
end
 
# chefというホスト名のサーバのロール名をclientとする
server 'chef', :roles =>    [ :client ]
 
# タスク名をmkdirにする
task :mkdir do
 
    # dir変数を設定する
    dir = '/root/test'
 
    # ロール名がclientに対し,do～endまでに記載したコマンドを実行する
    on roles( :client ) do
 
        # mkdirとlsコマンドを実行する
        execute "mkdir -p #{dir}"
        execute "ls -ld #{dir}"
    end
end
 
