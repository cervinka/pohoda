module Pohoda
  class Establishment
    include BaseElement

    def company
      t 'typ:company'
    end

    def city
      t 'typ:city'
    end

    def street
      t 'typ:street'
    end

    def zip
      t 'typ:zip'
    end
  end
end