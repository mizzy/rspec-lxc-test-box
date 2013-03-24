# rspec-lxc-test-box

I've re-writed this as a rubygem "serverspec".
See: https://github.com/mizzy/serverspec

This is an example for testing containers created by [puppet-lxc-test-box](https://github.com/mizzy/puppet-lxc-test-box).

You can write test code like this.

```ruby
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
```
