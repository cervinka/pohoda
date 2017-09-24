module Pohoda
  class ResourcesMOSSType
    include BaseElement

    def ids
      t 'typ:ids'
    end

    def to_h
      { ids: ids }
    end
  end
end
