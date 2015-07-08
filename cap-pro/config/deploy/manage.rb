# サーバ情報を記載した./config/servers.rbをロードするように変更
load './config/servers.rb'
 
task :mkdir do
  dir = '/root/test'
 
  on roles( :client ) do
    execute "mkdir -p #{dir}"
    execute "ls -ld #{dir}"
  end
end
 
