class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	belongs_to :company
	has_many :reports
	has_many :projects, :through => :reports
	has_many :projects

	validates :fname, length: { minimum: 2 }
	validates :lname, length: { minimum: 5 }
	
	def to_s
		"#{fname} #{lname}"
	end
end
