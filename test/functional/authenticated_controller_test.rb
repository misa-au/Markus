require File.dirname(__FILE__) + '/../test_helper'

# Test class to extend when creating tests for this application;
# overrides common request types with authentication
class AuthenticatedControllerTest < ActionController::TestCase
  
  # Performs GET request as the supplied user for authentication
  def get_as(user, action, params=nil, flash=nil)
    session_vars = { 'uid' => user.id, 'timeout' => 3.days.from_now }
    get action, params, session_vars, flash
  end
  
  # Performs POST request as the supplied user for authentication
  def post_as(user, action, params=nil, flash=nil)
    session_vars = { 'uid' => user.id, 'timeout' => 3.days.from_now }
    post action, params, session_vars, flash
  end
  
  # Performs DELETE request as the supplied user for authentication
  def delete_as(user, action, params=nil, flash=nil)
    session_vars = { 'uid' => user.id, 'timeout' => 3.days.from_now }
    delete action, params, session_vars, flash
  end
end