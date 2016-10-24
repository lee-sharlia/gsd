class GsdItem < ActiveRecord::Base
  belongs_to :gsd_list
end

def completed?
	!completed_at.blank?
end

