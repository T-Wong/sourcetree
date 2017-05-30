# # encoding: utf-8

# Inspec test for recipe sourcetree::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('C:\Users\vagrant\AppData\Local\SourceTree\app-2.0.20.1\SourceTree.exe') do
  it { should be_file }
end
