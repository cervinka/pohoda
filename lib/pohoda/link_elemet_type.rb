module Pohoda
  class LinkElemetType
    include BaseElement

    def source_agenda
      at :'typ:sourceAgenda'
    end

    def source_document
      element_xml = at :'typ:sourceDocument'

      SourceDocumentType.new(element_xml) if element_xml
    end

    def to_h
      { source_agenda: source_agenda,
        source_document: source_document.to_h }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
