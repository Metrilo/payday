module Payday
  # Basically just an invoice. Stick a ton of line items in it, add some details, and then render it out!
  class Invoice
    include Payday::Invoiceable

    attr_accessor :invoice_number, :bill_to, :ship_to, :notes, :line_items, :shipping_rate, :shipping_description,
      :tax_rate, :tax_description, :due_at, :paid_at, :refunded_at, :currency, :invoice_details, :invoice_date, :invoice_locale,
      :local_currency, :local_currency_value, :currency_exchange_rate, :currency_exchange_float, :invoice_stamp

    def initialize(options =  {})
      self.invoice_number = options[:invoice_number] || nil
      self.bill_to = options[:bill_to] || nil
      self.ship_to = options[:ship_to] || nil
      self.notes = options[:notes] || nil
      self.line_items = options[:line_items] || []
      self.shipping_rate = options[:shipping_rate] || 0
      self.shipping_description = options[:shipping_description] || nil
      self.tax_rate = options[:tax_rate] || 0
      self.tax_description = options[:tax_description] || nil
      self.due_at = options[:due_at] || nil
      self.paid_at = options[:paid_at] || nil
      self.refunded_at = options[:refunded_at] || nil
      self.currency = options[:currency] || nil
      self.invoice_details = options[:invoice_details] || []
      self.invoice_date = options[:invoice_date] || nil
      self.invoice_locale = options[:invoice_locale] || :en
      self.local_currency = options[:local_currency] || nil
      self.local_currency_value = options[:local_currency_value] || nil
      self.currency_exchange_rate = options[:currency_exchange_rate] || nil
      self.currency_exchange_float = options[:currency_exchange_float] || nil
      self.invoice_stamp = options[:invoice_stamp] || nil
    end

    # The tax rate that we're applying, as a BigDecimal
    def tax_rate=(value)
      @tax_rate = BigDecimal(value.to_s)
    end

    # Shipping rate
    def shipping_rate=(value)
      @shipping_rate = BigDecimal(value.to_s)
    end
  end
end
