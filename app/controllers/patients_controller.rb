class PatientsController < ApplicationController
  def all_doctors
		@doctors = User.where(role: "doctor")
	end
end
