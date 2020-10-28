class CurrencyController< ActionController::Base
  
  def forex
    api = open('https://api.exchangerate.host/symbols').read
    parsed_data = JSON(api)
    @symbols = parsed_data.fetch('symbols').keys #Array
    render({:template=> '/templates/forex.html.erb'})
  end

end