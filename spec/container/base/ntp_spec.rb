require 'container_spec_helper'

describe 'ntp' do
  it { should be_installed }
end

describe 'ntpdate' do
  it { should be_installed }
end

describe 'ntpd' do
  it { should be_enabled }
  it { should be_running }
end

describe 'ntpdate' do
  it { should be_enabled }
end
