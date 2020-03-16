class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: { admin: "admin", doctor: "doctor", patient: "patient"}

  has_many :appointments

  has_many :doctor_relations, foreign_key: :patient_id, class_name: 'Appointment'
  has_many :patients, through: :doctor_relations, source: :doctor

  has_many :patient_relations, foreign_key: :doctor_id, class_name: 'Appointment'
  has_many :doctors, through: :patient_relations, source: :patient
end
