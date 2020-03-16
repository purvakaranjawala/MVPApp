class AppointmentsController < ApplicationController
	before_action :fetch_patient

	def new
		@doctors = User.where(role: "doctor")
		@appointment = Appointment.new
	end

	def create
		@appointment = Appointment.new(appointment_params)
		if @appointment.save
		  flash[:notice] = "Appointment placed"
		else
			byebug
			flash[:alert] = "Appointment Not placed" 
		end
		redirect_to all_doctors_patient_path(current_user)
	end

	private

	def appointment_params
		params.require(:appointment).permit(:doctor_id, :patient_id, :time, :accepted)
	end

	def fetch_patient
		@patient = current_user
	end
end
