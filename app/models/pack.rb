class Pack < ActiveRecord::Base
  acts_as_list
  attr_accessible :name

  # Relationships
  # -----------------------------
  has_many :dogs, :order => "dogs.position"


  # Validations
  # -----------------------------
  validates_presence_of :name

  
  # Constants
  #-------------------------------


  # Scopes
  # -----------------------------
  scope :all_dogs, lambda { |id| where("dogs_id = ?", id) }

  
  # Other methods
  # -----------------------------


end
