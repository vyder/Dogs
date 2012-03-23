class Pack < ActiveRecord::Base
  acts_as_list
  attr_accessible :name

  # Relationships
  # -----------------------------
  has_many :dogs


  # Validations
  # -----------------------------
  validates_presence_of :name

  
  # Constants
  #-------------------------------


  # Scopes
  # -----------------------------
  

  
  # Other methods
  # -----------------------------


end
