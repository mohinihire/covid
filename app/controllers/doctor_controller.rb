class DoctorController < ApplicationController

def report1
   @doctors=Doctor.all
    #@doc=Doctor.find(params[:id])
    #redirect_to(action:'finalreport')
     #  redirect_to(action:'finalreport',id:@doc.id,doctorname:@doc.doctorname)
    #id=@patient.id
end

def home
   redirect_to root_path
end
def patientfirst
   redirect_to(action:'report1')
 end
def new
    #doctor=Doctor.new(doctor_params)
    @doctor=Doctor.new
  end
def suggest
    @patient=Patient.find(params[:id])
    redirect_to(action:'suggest')
    #redirect_to(action:'suggest',patient_id:@patient.id)
  end

def create
    @doctor=Doctor.new(doctor_params)
    if @doctor.save
       redirect_to(action:'new')
    else
      flash[:notice]="Error:record not created"
      render(action:'new')
       #redirect_to(action:'index')
    end
  end
def save
  end
 
 def delete
    @doctor=Doctor.find(params[:id])
  end
  def destroy
    bk=Doctor.find(params[:id])
    bk.destroy
    redirect_to(action:'report1')
  end
  def new
  end
  
  def show
    @doctor=Doctor.find(params[:id])
  end
  def finalreport
    @doctor=Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:doctorname,:dmobno,:dcity,:patient_id,:dmedicine,:ddescription)
  end


end
