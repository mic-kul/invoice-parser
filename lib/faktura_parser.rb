require 'docsplit'
require 'pathname'
require 'classifier'
require 'parser/base_parser'
require 'parser/ovh_parser'
require 'parser/play_parser'

class FakturaParser
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def to_hash
    {
      nip: parser.nip,
      amount_brutto: parser.amount_brutto,
      date: parser.date,
      date_purchase: parser.purchase_date,
      pay_until: parser.pay_until,
      document_number: parser.document_number,
      expense_type: parser.expense_type,
      paid: parser.paid?,
    }
  end

  def parser
    Classifier.new(get_contents).parser
  end

  def filename
    Pathname.new(path)
  end

  def filename_text
    filename.basename.to_s.gsub('.pdf', '.txt')
  end

  def get_contents
    Docsplit.extract_text(filename, ocr: false, output: 'tmp/text')
    File.read("tmp/text/#{filename_text}")
  end
end
