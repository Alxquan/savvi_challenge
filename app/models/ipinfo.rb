class Ipinfo < ApplicationRecord
  require 'curb'

  def other_ip_address(address)
    Curl.get("www.ipinfo.io/#{address}")
  end

  def personal_ip_address
    Curl.get("www.ipinfo.io")
  end
end
