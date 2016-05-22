class HomeController < ApplicationController
  require 'telegram/bot'
  def index
    @roominfo = Roominfo.all
  end
  
  #Roominfo.where(roomnumber: '20102', weekday: 4, timevalue: 1800).first.update_attributes(:isempty => 0)

  def onerecord
    if params[:roomnumber] != ""
      @roomnumber = params[:roomnumber]
      #@roomnumber = @roomnumber.upcase 하면 오류남
      @roomnumber = @roomnumber
      @weekday = params[:weekday]
      @timestep = params[:timestep]
      if @weekday != ""
        @roominfo = Roominfo.where(roomnumber: @roomnumber, weekday: @weekday).order('timevalue')
      else
        @roominfo = Roominfo.where(roomnumber: @roomnumber).order('timevalue, weekday')
      end
    end
  end
  
  
  def table
    if params[:roomnumber] != ""
      @roomnumber = params[:roomnumber]
      #@roomnumber = @roomnumber.upcase 하면 오류남
      @roomnumber = @roomnumber
      @roominfo = Roominfo.where(roomnumber: @roomnumber)
    end
  end
  
  

end
