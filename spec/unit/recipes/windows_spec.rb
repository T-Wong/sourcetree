#
# Cookbook:: sourcetree
# Spec:: windows
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'sourcetree::windows' do
  context 'When all attributes are default, on windows' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'windows', version: '2012R2')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs sourcetree' do
      expect(chef_run).to install_windows_package('SourceTree')
    end
  end
end
