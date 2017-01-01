class Admin::SessionsController < ::Devise::SessionsController
  layout "devise"
  # the rest is inherited, so it should work
end