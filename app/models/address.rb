require 'resolv'

class Address < ApplicationRecord
  validates :ip_address, :presence => true, :uniqueness => true,
  :format => { :with => Resolv::IPv4::Regex }
  validates :device, :presence => true

  before_create :set_ip_block

  private

  def set_ip_block
    self.ip_block = "#{ip_address[0..2]}.0.0/16"
  end
end
