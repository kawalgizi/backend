module UsersHelper
  def list_roles user
    {'Superadmin' => user.superadmin?, 'Contributor' => user.contributor?, 'Expert' => user.expert?}
  end
end
