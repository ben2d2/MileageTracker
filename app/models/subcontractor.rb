class Subcontractor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:first_name, :last_name, :phone

	has_many :job_logs
  # Setup accessible (or protected) attributes for your model
  validates_presence_of :email, :first_name, :last_name, :phone


  def display_name
    "#{first_name} #{last_name}"
  end
  
end
