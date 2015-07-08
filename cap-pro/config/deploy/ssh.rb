load './config/servers.rb'
task :up_key do
	src =  '/opt/capistrano/manage/files/root/.ssh/authorized_keys'
	dir =  '/root/.ssh'
	dst =  '/root/.ssh/test_keys'
	on roles( :client ) do
		execute "test -d #{dir} && mkdir -p #{dir}"
		upload! src, dst, :recursive => true
		execute "cat #{dst} >> #{dir}/authorized_keys"
		execute "rm -f #{dst}"
	end
end
