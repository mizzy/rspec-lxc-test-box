# coding: utf-8

require 'rspec/core'
require 'rspec/core/rake_task'

task :default do
  sh "rake -T"
end

task :spec => "spec:all"

namespace :spec do

  desc "run all spec"
  task :all => %w( spec:container:base )

  namespace :container do
    RSpec::Core::RakeTask.new(:base) do |t|
      t.pattern = 'spec/container/base/*_spec.rb'
    end
  end
end
