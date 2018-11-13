# encoding: utf-8

# Inspec test for recipe barito-market::app

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  describe user('root') do
    it { should exist }
  end

  describe user('barito_curator') do
    it { should exist }
  end

  describe directory('/opt/barito_curator') do
    its('mode') { should cmp '0755' }
    its('owner') { should eq 'barito_curator' }
    its('group') { should eq 'barito_curator' }
  end
end

describe package('python3-pip python3-dev') do
  it { should be_installed }
end