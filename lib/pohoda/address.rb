module Pohoda
  class Address
    include BaseElement

    def company
      t 'typ:company'
    end

    def name
      t 'typ:name'
    end

    def division
      t 'typ:division'
    end

    def street
      t 'typ:street'
    end

    def city
      t 'typ:city'
    end

    def zip
      t 'typ:zip'
    end

    def ico
      t 'typ:ico'
    end

    def dic
      t 'typ:dic'
    end

    def ic_dph
      t 'typ:icDph'
    end

    def country
      RefType.new(e 'typ:country')
    end

    def phone
      t 'typ:phone'
    end

    def mobil_phone
      t 'typ:mobilPhone'
    end

    def fax
      t 'typ:fax'
    end

    def email
      t 'typ:email'
    end

    def to_h
      { company: company,
        name: name,
        division: division,
        street: street,
        city: city,
        zip: zip,
        ico: ico,
        dic: dic,
        ic_dph: ic_dph,
        country: country.to_h,
        phone: phone,
        mobil_phone: mobil_phone,
        fax: fax,
        email: email }
    end
  end
end
