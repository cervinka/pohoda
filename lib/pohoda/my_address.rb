require "pohoda/base_element"
require "pohoda/address_internet_type"
require "pohoda/establishment"

module Pohoda
  class MyAddress
    include BaseElement

    def address
      element_xml = at :'typ:address'

      AddressInternetType.new(element_xml) if element_xml
    end

    def establishment
      element_xml = at :'typ:establishment'

      Establishment.new(element_xml) if element_xml
    end

    def to_h
      { address: address.to_h,
        establishment: establishment.to_h }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
