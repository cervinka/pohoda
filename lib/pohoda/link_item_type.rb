module Pohoda
  class LinkItemType
    include BaseElement

    def source_agenda
      at :'typ:sourceAgenda'
    end

    def source_item_id
      at :'typ:sourceItemId'
    end

    def to_h
      { source_agenda: source_agenda,
        source_item_id: source_item_id }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
