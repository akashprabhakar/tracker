class ReportsController < ApplicationController
	def index
	if (params[:days])
			@reports = Report.recentdays(params[:days]).order('datetimeperformed desc')
		else
			@reports = Report.all.order('datetimeperformed desc')
		end
	end

	def show
		@report = Report.find(params[:id])
	end

	def new
		@report = Report.new
	end

	def create
		@report = Report.new(params[:report].permit(:project_id, :user_id, :datetimeperformed, :hours, :activity))
	    if @report.save
	    	Usermailer.reportcreated_email(@report).deliver
		flash[:notice] = 'Report Created'
		redirect_to @report
		else
		render 'new'
	end
	end

def edit
		@report = Report.find(params[:id])
	end

	def update
		@report = Report.find(params[:id])

		if @report.update(params[:report].permit(:project_id, :user_id, :datetimeperformed, :hours, :activity))
			redirect_to @report
		else
			render 'edit'
		end
	end


end
