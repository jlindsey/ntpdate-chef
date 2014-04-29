require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe package('cron') do
  it { should be_installed }
end

describe package('ntpdate') do
  it { should be_installed }
end

describe cron do
  it { should have_entry('30 * * * * /usr/sbin/ntpdate ntp.ubuntu.com pool.ntp.org').with_user('root') }
end

