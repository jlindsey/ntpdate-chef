include_recipe 'apt'

package 'cron'
package 'ntpdate'

cron "run_ntpdate" do
  user "root"
  command "/usr/sbin/ntpdate ntp.ubuntu.com pool.ntp.org"
  minute "30"
  action :create
end

