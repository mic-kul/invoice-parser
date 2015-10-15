module Parser
  class OvhParser < BaseParser
    def document_number
      /Faktura VAT:\n(.*)\ ORYGINAŁ/.match(text)[1]
    end

    def nip
      /cław\nNIP: ([0-9]+)\n/.match(text)[1]
    end

    def date
      m = /Data wystawienia: ([0-9]+)-([0-9]+)-([0-9]+)\n/.match(text)
      #yyyy-mm-dd
      "#{m[3]}-#{m[2]}-#{m[1]}"
    end

    def purchase_date
      # puts text
      # m = /Data (sprzedaży|zapłaty)\n([0-9]+)-([0-9]+)-([0-9]+)\n/.match(text)
      # "#{m[1]}-#{m[2]}-#{m[3]}"
      date
    end

    def amount_brutto
      m = /Razem brutto\n\n([0-9]+).([0-9]+) PLN\n\nKwota słownie:/.match(text)
      "#{m[1]}.#{m[2]}"
    end
  end
end
