require "dolar_realbr/version"
require "savon"
require "brazilian-rails"

module DolarRealbr
  class Convert
  	CC = { 'sale' => {'dollar' => 1, 'euro' => 21619, 'yen' => 21621, 'pound_sterling' => 21623, 'swiss_franc' => 21625, 'danish_krone' => 21627, 'norwegian_krone' => 21629, 'swedish_krona' => 21631, 'australian_dollar' => 21633, 'canadian_dollar' => 21635} , 'buy' => {'dollar' => 10813, 'euro' => 21620, 'yen' => 21622, 'pound_sterling' => 21624, 'swiss_franc' => 21626, 'danish_krone' => 21628, 'norwegian_krone' => 21630, 'swedish_krona' => 21632, 'australian_dollar' => 21634, 'canadian_dollar' => 21636} }		
  	def initialize()
  		@url_service = 'https://www3.bcb.gov.br/sgspub/JSP/sgsgeral/FachadaWSSGS.wsdl'
  		CC.default(nil)
  		@value = @day = @name = @code = @unit = nil
  		@cli = Savon.client(wsdl: @url_service)
  	end

  	# params {:currency =>  'dollar', :type =>  'buy', :date => 'DD/MM/YYYY'}
  	def value_currency2realBR(params)
  		@code = CC.fetch("#{params[:type]}").fetch("#{params[:currency]}") if CC.key?("#{params[:type]}") and CC["#{params[:type]}"].key?("#{params[:currency]}")
  		unless @cli.nil? or @code.nil?
  			@value = @day = @name = @code = @unit = nil

  			if params[:date].nil? 
	  			op = @cli.call(:get_ultimo_valor_xml, message: {'in0' => @code})
	  			op  = op.body.to_h[:get_ultimo_valor_xml_response][:get_ultimo_valor_xml_return]  unless op.body.nil?
	  			if op.class == Nori::StringWithAttributes ##Savon::Response
			  		xml_file = Nokogiri::HTML(op.force_encoding("UTF-8"))
			  		@unit = xml_file.css('unidade').text
			  		@name = xml_file.css('nome').text
			 			@day = "#{xml_file.css('ano').text}/#{xml_file.css('mes').text.rjust(2,'0')}/#{xml_file.css('dia').text.rjust(2,'0')}"
		 				@value = xml_file.css('valor').text.gsub(',','.').to_f
	 				end
  			else
  				op = @cli.call(:get_valor, message: {'in0' => @code, 'in1' => params[:date]})
  				if op.class == Savon::Response
  					@day = params[:date]
  					@value = op.body.to_h[:multi_ref]
  				end
  			end
  		end
  	end

  	# params {:currency =>  'dolar', :type =>  'buy', :date => 'DD/MM/YYYY'}
  	def value_realBR2currency(params)
  		self.value_currency2realBR(params)
  		@value = @value**(-1) unless @value.nil? or @value == 0
		end

  	# params {:value => 1.00, :currency =>  'dolar', :type =>  'buy', :date => 'DD/MM/YYYY'}
  	def convert_currency2realBR(params)
  		self.value_currency2realBR(params)
  		return @value *= params[:value] unless @value.nil? or params[:value].nil?
  	end

  	# params {:value => 1.00, :currency =>  'dolar', :type =>  'buy', :date => 'DD/MM/YYYY'}
  	def convert_realBR2currency(params)
  		self.value_currency2realBR(params)
  		@value = params[:value]/@value unless @value.nil? or params[:value].nil? or @value == 0
  	end

  	def get_name
  		return @name
  	end

  	def get_value
  		return @value
  	end

  	def get_day
  		return @day
  	end

  	def get_unit_currency
  		return @unit
  	end

  end
end
