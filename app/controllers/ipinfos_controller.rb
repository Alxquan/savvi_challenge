class IpinfosController < ApplicationController
  require 'curb'

  def new
    @ipinfo = Ipinfo.new
  end


  def index
    @ipinfos = Ipinfo.all
  end

  def show
  end

  def create
    @ipinfo = Ipinfo.new(ipinfo_params)
    if @ipinfo.save
      redirect_to root_url, notice: 'Hi'
    end
  end

  private

  def ipinfo_params
    params.require(:ipinfo).permit(:other_ip_address, :personal_ip_address)
  end


end
