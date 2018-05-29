class User < ActiveRecord::Base

  has_many :reviews
  has_secure_password

  validates_presence_of :password, :password_confirmation, :first_name, :last_name, :email
  # validates :password_same_as_password_confirmation
  validates :email, presence: true, :uniqueness => {:case_sensitive => false}

  # def password_same_as_password_confirmation
  #   errors.add(:password, "passwords did not match up") if password != password_confirmation
  # end
    # If the user exists AND the password entered is correct.
    # if user && user.authenticate(params[:password])
    # if authenticate(password) && User.email

  # def self.authenticate_with_credentials(email, password)
  #   if user.authenticate(password) && email

  #   else
  #     nil
  #   end
  # end
end
