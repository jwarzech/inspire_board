require 'spec_helper'

describe User do
  it { should have_many :pictures }
  
  it { should validate_presence_of :password }
  it { should validate_presence_of :username }
  
  it { should allow_mass_assignment_of :username }
  it { should allow_mass_assignment_of :password }
  it { should allow_mass_assignment_of :password_confirmation }
  
  it { should_not allow_mass_assignment_of :crypted_password }
  it { should_not allow_mass_assignment_of :salt }
end