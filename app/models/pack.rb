class Pack < ActiveRecord::Base
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
