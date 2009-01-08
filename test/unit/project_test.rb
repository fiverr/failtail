require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  
  should_require_attributes :name
  should_require_attributes :owner_id
  should_require_attributes :api_token
  
  should_require_unique_attributes :api_token
  should_require_unique_attributes :name, :scoped_to => :owner_id
  
  should_have_many :memberships, :dependent => :destroy
  should_have_many :members, :through => :memberships
  should_have_many :errors, :dependent => :destroy
  
  should_belong_to :owner
  
end
