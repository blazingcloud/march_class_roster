class Person < ActiveRecord::Base 
  scope :all_present, where(:present => true)
  scope :all_absent, where(:present => false)
  scope :not_checked_in, where(:present => nil)
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def presence_description
    "#{full_name} is #{present ? '' : 'not '}present in class."
  end
end
