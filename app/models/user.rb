class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  scope :superadmins, -> { where(superadmin_role: true) }
  scope :contributors, -> { where(contributor_role: true) }
  scope :experts, -> { where(expert_role: true) }

  validates_presence_of :username

  def superadmin?
    superadmin_role
  end

  def contributor?
    contributor_role
  end

  def expert?
    expert_role
  end
end
