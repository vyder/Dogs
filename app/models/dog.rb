class Dog < ActiveRecord::Base
  attr_accessible :name, :breed, :color, :pack_id

  # Relationships
  # -----------------------------
  belongs_to :pack


  # Validations
  # -----------------------------
  validates_presence_of :name, :breed

  
  # Constants
  #-------------------------------


  # Scopes
  # -----------------------------
  

  
  # Other methods
  # -----------------------------

  
end
