require "pohoda/base_element"
require "pohoda/invoice_item_type"
require "pohoda/invoice_advance_payment_item_type"

module Pohoda
  class InvoiceDetailType
    include BaseElement

    def items
      raw_items = all(:'inv:invoiceItem')

      if raw_items.empty?
        []
      else
        raw_items.map { |i| InvoiceItemType.new(i) }
      end
    end

    def advance_payments
      raw_items = all(:'inv:invoiceAdvancePaymentItem')

      if raw_items.empty?
        []
      else
        raw_items.map { |i| InvoiceAdvancePaymentItemType.new(i) }
      end
    end

    def to_h
      { items: items.map(&:to_h),
        advance_payments: advance_payments.map(&:to_h) }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
