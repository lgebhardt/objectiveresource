class Dog < ActiveRecord::Base
  belongs_to :person
  validates_exclusion_of :name, :in => ["ReservedName"]
  
  named_scope :living, :conditions => 'date_of_death is null'
  named_scope :deceased, :conditions => 'date_of_death is not null'

end
