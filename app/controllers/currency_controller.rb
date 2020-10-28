class CurrencyController< ActionController::Base
  
  def forex
    raw_symbols = open('https://api.exchangerate.host/symbols').read
    parsed_symbols = JSON(raw_symbols)
    @symbols = parsed_symbols.fetch('symbols').keys #Array
    render({:template=> '/templates/forex.html.erb'})
  end

  def select
    @ticker = params.fetch('currency')

    raw_symbols = open('https://api.exchangerate.host/symbols').read
    parsed_symbols = JSON(raw_symbols)
    @symbols = parsed_symbols.fetch('symbols').keys #Array
     
    render({:template=> '/templates/select.html.erb'})
  end

  def convert
    @ticker = params.fetch('currency')
    @to = params.fetch('to')
    raw_exr = open('https://api.exchangerate.host/convert?from=' + @ticker + '&to=' + @to).read
    parsed_exr = JSON(raw_exr)
    @exr = parsed_exr.fetch('info').fetch('rate')
    render({:template=> '/templates/convert.html.erb'})
  end

end