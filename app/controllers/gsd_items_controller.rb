class GsdItemsController < ApplicationController
	before_action :set_gsd_list
	before_action :set_gsd_item, except: [:create]

	def set_gsd_item
		@gsd_item = @gsd_list.gsd_items.find(params[:id])
	end

	def create
		@gsd_item = @gsd_list.gsd_items.create(gsd_item_params)
		redirect_to @gsd_list
	end 

	def destroy
		if @gsd_item.destroy
			flash[:success] = "GSD item was deleted"
		else
			flash[:error] = "GSD item could not be deleted"
	end

	redirect_to @gsd_list
	end

	def complete
		@gsd_item.update_attribute(:completed_at, Time.now)
		redirect_to @gsd_list, notice: "Well high-fives, You got shit done!"
	end

	private
		def set_gsd_list
			@gsd_list = GsdList.find(params[:gsd_list_id])
		end

		def gsd_item_params
			params[:gsd_item].permit(:content)
		end

end
