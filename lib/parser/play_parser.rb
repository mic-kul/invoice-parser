module Parser
  class PlayParser < BaseParser
    def amount_brutto
      m = /WARTOŚĆ FAKTURY\s+([0-9]+),([0-9]+) zł/i.match(text)
      "#{m[1]},#{m[2]}"
    end

    def document_number
      m = /Numer faktury\n\n(.*)/.match(text)
      m[1]
    end

    def nip
      m = /02-677 Warszawa\nNIP: ([0-9\-]+)/.match(text)
      "#{m[1]}".tr('-', '')
    end

    def date
      m = /Data wystawienia\n\n([0-9]+).([0-9]+).([0-9]+)/.match(text)
      "#{m[3]}-#{m[2]}-#{m[1]}"
    end

    def purchase_date
      date
    end

    def pay_until
      m = /(Termin płatności)\s+([0-9]+).([0-9]{2}).([0-9]{4})/i.match(text)
      "#{m[4]}-#{m[3]}-#{m[2]}"
    end

    def expense_type
      :tele_media
    end
  end
end
