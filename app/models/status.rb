class Status < ActiveRecord::Base
	has_many :tickets
	before_save :default_status

	def default_status
		if(self.default)
			Status.update_all(['`default`=?',false])
		else
			if(Status.size==0)
				self.default=true
			end
		end
	end

end
