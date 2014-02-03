class Ticket < ActiveRecord::Base
	belongs_to :category
	belongs_to :status
	belongs_to :user
	
	validates :category_id, :question, :name, :email, presence: true
  
  def self.get3chr
    (1..3).to_a.map{(65+rand(25)).chr}.join
  end
  
  def self.get3dgt
    (1..3).to_a.map{rand(10)}.join
  end

  def self.generate_new_ticket_code
    get3chr+'-'+get3dgt+'-'+get3chr+'-'+get3dgt+'-'+get3chr
  end

end
