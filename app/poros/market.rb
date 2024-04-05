class Market
  attr_reader :id, :name, :city, :state

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @city = data[:attributes][:city]
    @state = data[:attributes][:state]
    @street = data[:attributes][:street]
    @zip = data[:attributes][:zip]
  end

  def address
    "#{@street}\n#{@city}, #{@state} #{@zip}"
  end
end