require 'pathname'

require 'ssh_spec_helper'

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|f| require f }

RSpec.configure do |c|
  c.include(SshSpecHelper)

  c.add_setting :role, :default => nil
  c.add_setting :host, :default => nil

  c.before do
    c.role = File.basename(Pathname.new(example.metadata[:location]).dirname)
    c.host = c.role
  end

end
