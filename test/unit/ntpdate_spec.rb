require 'spec_helper'

describe 'ntpdate::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'includes apt::default' do
    expect(chef_run).to include_recipe('apt::default')
  end

  it 'installs cron' do
    expect(chef_run).to install_package('cron')
  end

  it 'installs ntpdate' do
    expect(chef_run).to install_package('ntpdate')
  end

  it 'creates a cron' do
    expect(chef_run).to create_cron('run_ntpdate').with(user: 'root',
                                                        command: '/usr/sbin/ntpdate ntp.ubuntu.com pool.ntp.org',
                                                        minute: '30')
  end
end

