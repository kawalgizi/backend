class Admin::SessionsController < ::Devise::SessionsController
  layout 'auth'
  # the rest is inherited, so it should work
end