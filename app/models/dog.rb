class Dog < ActiveRecord::Base
  acts_as_list
  attr_accessible :name, :breed, :color, :pack_id, :position

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
  
  def update_positions
    params[:sortable_list].each_index do |i|
      item = Dog.find(params[:sortable_list][i])
      item.position = i
      item.save
    end
    @list = List.find(:all, :order => 'position')	
    render :layout => false, :action => :list
  end
  
  # Other methods
  # -----------------------------
  def has_pack?
    !self.pack.nil?
  end
  
end
