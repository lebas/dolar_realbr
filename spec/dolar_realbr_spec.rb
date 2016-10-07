require 'spec_helper'

describe DolarRealbr do
  it 'has a version number' do
    expect(DolarRealbr::VERSION).not_to be nil
  end

   it 'has a date' do
 
  end

  it 'has a value' do 

  end

  it 'has a code and currency valid' do 
  	dol = DolarRealbr::Convert.new
  	#dol.valid?
  	params = {currency: 'dolar', type: 'sale' }
  end

  it 'has a exchange rate do realbr' do 
  	dol = DolarRealbr::Convert.new
  	#dol.valid?
  	params = {value: 100_015, currency: 'dollar', type: 'sale' }
  	expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'has a exchange rate do realbr with date valid' do 
  	dol = DolarRealbr::Convert.new
  	#dol.valid?
  	params = {value: 100_015, currency: 'dollar', type: 'buy', date: '10/08/2015'}
  	expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

it 'has a exchange rate do realbr with date invalid' do 
  	dol = DolarRealbr::Convert.new
  	#dol.valid?
  	params = {value: 100_015, currency: 'dolar', type: 'buy', date: '08/08/2015'}
  	expect(dol.value_currency2realBR(params)).to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'has a exchange rate from realbr wuth date valid' do 
  	dol = DolarRealbr::Convert.new
  	#dol.valid?
  	params = {value: 100_015, currency: 'dolar', type: 'buy', date: '10/08/2015'}
  	expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'has a exchange rate from realbr wuth date invalid' do 
  	dol = DolarRealbr::Convert.new
  	#dol.valid?
  	params = {value: 100_015, currency: 'dolar', type: 'buy', date: '08/08/2015'}
  	expect(dol.value_currency2realBR(params)).to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'has convert from realbr without date' do 
  
  end

  it 'has convert from realbr with date' do 
  
  end

  it 'has convert to realbr without date' do 
  
  end

  it 'has convert to realbr with date' do 

  end

  it 'dollar buy without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'dollar', type: 'buy'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'dollar sale without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'dollar', type: 'sale'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'dollar buy with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'dollar', type: 'buy', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'dollar sale with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'dollar', type: 'sale', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'euro buy without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'euro', type: 'buy'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'euro sale without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'euro', type: 'sale'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'euro buy with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'euro', type: 'buy', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'euro sale with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'euro', type: 'sale', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end



  it 'yen buy without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'yen', type: 'buy'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'yen sale without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'yen', type: 'sale'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'yen buy with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'yen', type: 'buy', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'yen sale with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'yen', type: 'sale', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end


  it 'pound_sterling buy without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'pound_sterling', type: 'buy'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'pound_sterling sale without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'pound_sterling', type: 'sale'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'pound_sterling buy with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'pound_sterling', type: 'buy', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'pound_sterling sale with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'pound_sterling', type: 'sale', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'swiss_franc buy without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'swiss_franc', type: 'buy'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'swiss_franc sale without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'swiss_franc', type: 'sale'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'swiss_franc buy with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'swiss_franc', type: 'buy', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'swiss_franc sale with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'swiss_franc', type: 'sale', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'danish_krone buy without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'danish_krone', type: 'buy'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'danish_krone sale without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'danish_krone', type: 'sale'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'danish_krone buy with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'danish_krone', type: 'buy', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'danish_krone sale with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'danish_krone', type: 'sale', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'norwegian_krone buy without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'norwegian_krone', type: 'buy'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'norwegian_krone sale without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'norwegian_krone', type: 'sale'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'norwegian_krone buy with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'norwegian_krone', type: 'buy', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'norwegian_krone sale with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'norwegian_krone', type: 'sale', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'swedish_krona buy without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'swedish_krona', type: 'buy'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'swedish_krona sale without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'swedish_krona', type: 'sale'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'swedish_krona buy with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'swedish_krona', type: 'buy', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'swedish_krona sale with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'swedish_krona', type: 'sale', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'australian_dollar buy without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'australian_dollar', type: 'buy'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'australian_dollar sale without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'australian_dollar', type: 'sale'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'australian_dollar buy with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'australian_dollar', type: 'buy', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'australian_dollar sale with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'australian_dollar', type: 'sale', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'canadian_dollar buy without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'canadian_dollar', type: 'buy'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'canadian_dollar sale without date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'canadian_dollar', type: 'sale'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'canadian_dollar buy with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'canadian_dollar', type: 'buy', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end

  it 'canadian_dollar sale with date' do 
    dol = DolarRealbr::Convert.new
    #dol.valid?
    params = {value: 100_015, currency: 'canadian_dollar', type: 'sale', date: '10/08/2015'}
    expect(dol.value_currency2realBR(params)).not_to be nil
    expect(dol.value_realBR2currency(params)).not_to be nil
    expect(dol.convert_currency2realBR(params)).not_to be nil
    expect(dol.convert_realBR2currency(params)).not_to be nil
  end
end
