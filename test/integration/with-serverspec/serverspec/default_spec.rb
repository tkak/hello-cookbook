require 'serverspec'

set :backend, :exec

describe package('zsh') do
  it { should be_installed }
end

describe file('/usr/local/foo') do
  it { should be_directory }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode '755' }
end

describe file('/usr/local/foo/bar') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode '644' }
  its('content') { should match('Hello') }
end
