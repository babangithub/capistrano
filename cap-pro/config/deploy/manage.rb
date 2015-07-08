load './config/servers.rb'

namespace :exec do
        dir = "/root/test"

        desc "test"
        task :mkdir do

                on roles( :client ) do
                        execute "mkdir -p #{dir}"
                end
        end

        task :ls do
                on roles( :client ) do
                        execute "ls -ld #{dir}"
                end
        end
end

