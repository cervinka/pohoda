module Pohoda
  module Builder
    class StockItem
      include BaseBuilder

      attr_accessor :serial_number, :store, :stock_item

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].stockItem(namespaces) {
            xml['typ'].serialNumber serial_number
            xml << Pohoda::Builder::Store.new(store).doc.root.to_xml
            xml << Pohoda::Builder::StockItem2.new(stock_item).doc.root.to_xml
          }
        end
      end
    end
  end
end
