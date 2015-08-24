class Request < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true

  def self.search(search)
      where("name ILIKE :searchterm OR email ILIKE :searchterm OR message ILIKE :searchterm", searchterm: "%#{search}%") 
      #where("email LIKE ?", "%#{search}%") 
      #where("message ILIKE ?", "%#{search}%")
  end
end
