class User < ApplicationRecord
  has_many :pointers, :dependent => :destroy
  # most times, one user will have one resume, but this is a broad brush:
  has_many :resumes, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # user role setup
  enum role: [:seeker, :mentor]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :student
  end

end
