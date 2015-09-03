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
  	params = {:currency => 'dolar', :type => 'sale' }
  end

  it 'has a exchange rate do realbr' do 
  	dol = DolarRealbr::Convert.new
  	#dol.valid?
  	params = {:value => 100, :currency => 'dollar', :type => 'sale' }
  	expect(dol.value_currency2realBR(params)).not_to be nil
  end

  it 'has a exchange rate from realbr' do 

  end

  it 'has a exchange rate do realbr with date valid' do 
  	dol = DolarRealbr::Convert.new
  	#dol.valid?
  	params = {:value => 100, :currency => 'dollar', :type => 'buy', :date => '10/08/2015'}
  	expect(dol.value_currency2realBR(params)).not_to be nil
  end

it 'has a exchange rate do realbr with date invalid' do 
  	dol = DolarRealbr::Convert.new
  	#dol.valid?
  	params = {:value => 100, :currency => 'dolar', :type => 'buy', :date => '08/08/2015'}
  	expect(dol.value_currency2realBR(params)).to be nil
  end

  it 'has a exchange rate from realbr wuth date valid' do 
  	dol = DolarRealbr::Convert.new
  	#dol.valid?
  	params = {:value => 100, :currency => 'dolar', :type => 'buy', :date => '10/08/2015'}
  	expect(dol.value_currency2realBR(params)).not_to be nil
  end

  it 'has a exchange rate from realbr wuth date invalid' do 
  	dol = DolarRealbr::Convert.new
  	#dol.valid?
  	params = {:value => 100, :currency => 'dolar', :type => 'buy', :date => '08/08/2015'}
  	expect(dol.value_currency2realBR(params)).to be nil
  end

  it 'has convert from realbr without date' do 
  
  end

  it 'has convert from realbr with date' do 
  
  end

  it 'has convert to realbr without date' do 
  
  end

  it 'has convert to realbr with date' do 

  end

end
