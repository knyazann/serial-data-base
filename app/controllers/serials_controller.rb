class SerialsController < ApplicationController

    def index
        if params[:search_name] 
            @serials = search
          else
            @serials = Serial.all
          end
    end

    def search
        @serials = Serial.search(params[:search_name])
    end

    def new 
        @serial = Serial.new
    end  
      
    def create
        @serial = Serial.new(serial_params)
      if @serial.save
        redirect_to serials_path
      else
        flash[:warning] = "Ошибка!"
        redirect_to new_serial_path
      end
    end


    private
    def serial_params
      params.require(:serial).permit(:name, :year, :episode_num, :genre, :country, :producer)
    end
end