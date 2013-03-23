require 'container_spec_helper'

describe 'nrpe' do
  it { should be_installed }
  it { should be_enabled   }
  it { should be_running   }
end

describe 'nagios-plugins-all' do
  it { should be_installed }
end

describe '/etc/nagios/nrpe.cfg' do
  it { should be_file }
  it { should contain 'server_port=5666' }
end

describe '/etc/nrpe.d/01base.cfg' do
  it { should be_file }
end

describe 'port 5666' do
  it { should be_listening }
end

plugins = %w(
  check_mem
  check_readonlyfs
  check_postfix_queue
  check_mount
  number_range_utils.sh
)

plugins.each do |plugin|
  describe "/usr/lib64/nagios/plugins/#{plugin}" do
    it { should be_file }
  end
end
