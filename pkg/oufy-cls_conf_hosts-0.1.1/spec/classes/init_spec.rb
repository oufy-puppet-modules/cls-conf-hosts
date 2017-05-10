require 'spec_helper'
describe 'cls_conf_hosts' do

  context 'with defaults for all parameters' do
    it { should contain_class('cls_conf_hosts') }
  end
end
