class User < ActiveRecord::Base

  def user_display_values
    "#{first_name} #{last_name}, #{gender}, #{city}, #{state_cd}, #{born_on}"
  end
  validates_format_of :email_address, :allow_blank=>false, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates_format_of :phone_num, :allow_blank =>:true, :with => /^\([0-9]{3}\)[ ][0-9]{3}[-][0-9]{4}$/, :message => 'Please use format (xxx) xxx-xxxx for phone number.'
  validates_format_of :cell_num, :allow_blank =>:true, :with => /^\([0-9]{3}\)[ ][0-9]{3}[-][0-9]{4}$/, :message => 'Please use format (xxx) xxx-xxxx for cell number.'

  has_many :registrations
end
