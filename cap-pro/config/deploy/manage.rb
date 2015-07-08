load './config/servers.rb'
 
task :mkdir do
  dir = '/root/test'
 
  # 同時実行数を2サーバとし、インターバルを3秒とする
  on roles( :client ), in: :groups, limit: 2, wait: 3 do
    execute "mkdir -p #{dir}"
    execute "ls -ld #{dir}"
  end
end
 
