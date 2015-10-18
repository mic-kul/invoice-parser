module Parser
  class PlayParser < BaseParser
    def amount_brutto
      m = /WARTOŚĆ FAKTURY\n([0-9]+),([0-9]+) zł/.match(text)
      "#{m[1]},#{m[2]}"
    end

    def document_number
      m = /Numer faktury\n\n(.*)/.match(text)
      m[1]
    end

    def nip
      m = /NIP: ([0-9\-]+)/.match(text)
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
      m = /Termin płatności\n([0-9]+).([0-9]+).([0-9]+)/.match(text)
      "#{m[3]}-#{m[2]}-#{m[1]}"
    end

    def expense_type
      :tele_media
    end
  end
end
