require 'pohoda/base_element'
require 'pohoda/invoice_type'

module Pohoda
  class ListInvoiceType
    include BaseElement

    def invoices
      all(:'lst:invoice').map do |raw|
        Pohoda::InvoiceType.new(raw)
      end
    end

    def to_h
      { invoices: invoices.map(&:to_h) }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
