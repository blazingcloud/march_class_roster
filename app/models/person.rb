class Person < ActiveRecord::Base
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def presence_description
    "#{full_name} is #{present ? '' : 'not '}present in class."
  end
end
