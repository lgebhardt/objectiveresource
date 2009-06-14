class Person < ActiveRecord::Base
  has_many :dogs  , :dependent => :destroy

  named_scope :active, :conditions => ['active = ?', true]
  named_scope :inactive, :conditions => ['active = ?', false]

end
