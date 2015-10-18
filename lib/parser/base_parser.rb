module Parser
  class BaseParser
    attr_accessor :text
    def initialize(text)
      @text = text
    end

    def purchase_date
      date
    end

    def pay_until
      date
    end

    def receive_date
      date
    end

    def date
      nil
    end

    def expense_type
      :other
    end
  end
end
