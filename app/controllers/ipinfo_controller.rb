class IpinfoController < ApplicationController
  require 'curb'

  def new
    @ipinfo = Ipinfo.new
  end


  def index
  end

  def show
  end

  private

  def ipinfo_params
    params.require(:ipinfo).permit(:other_ip_address, :personal_ip_address)
  end

end
