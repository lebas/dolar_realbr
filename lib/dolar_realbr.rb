require "dolar_realbr/version"
require "savon"
require "date"

module DolarRealbr
  class Convert
  	def initialize()
  		@url_service = 'https://www3.bcb.gov.br/sgspub/JSP/sgsgeral/FachadaWSSGS.wsdl'
      		@CC = {'sale' => {'dollar' => 1, 'euro' => 21619, 'yen' => 21621, 'pound_sterling' => 21623, 'swiss_franc' => 21625, 'danish_krone' => 21627, 'norwegian_krone' => 21629, 'swedish_krona' => 21631, 'australian_dollar' => 21633, 'canadian_dollar' => 21635} , 'buy' => {'dollar' => 10813, 'euro' => 21620, 'yen' => 21622, 'pound_sterling' => 21624, 'swiss_franc' => 21626, 'danish_krone' => 21628, 'norwegian_krone' => 21630, 'swedish_krona' => 21632, 'australian_dollar' => 21634, 'canadian_dollar' => 21636} } 
  		@CC.default(nil)
  		@value = @day = @name = @code = @unit = nil
  		@cli = Savon.client(wsdl: @url_service)
  	end

    def check_date(day = nil)
      unless day.nil?
        dt = DateTime.new(day[6,4].to_i, day[3,2].to_i, day[0,2].to_i)
        while dt.sunday? or dt.saturday?
          dt =  dt.prev_day
        end
        day = "#{dt.day.to_s.rjust(2,'0')}/#{dt.month.to_s.rjust(2,'0')}/#{dt.year}"
      end 
      day
    end

  	# params {:currency =>  'dollar', :type =>  'buy', :date => 'DD/MM/YYYY'}
  	def value_currency2realBR(params)
  		puts @CC
  		puts @CC.key?("#{params[:type]}") 
  		puts @CC["#{params[:type]}"].key?("#{params[:currency]}")
  		puts "#{params[:type]}"
  		puts "#{params[:currency]}"
  		puts @CC.fetch("#{params[:type]}").fetch("#{params[:currency]}")
  		@code = @CC.fetch("#{params[:type]}").fetch("#{params[:currency]}") #if @CC.key?("#{params[:type]}") and @CC["#{params[:type]}"].key?("#{params[:currency]}")
  		if not @cli.nil? and not @code.nil?
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
          day = self.check_date(params[:date])
          puts "CODE => #{@code} e DAY => #{day}"
  				op = @cli.call(:get_valor, message: {'in0' => @code, 'in1' => day})
  				@value = op.body.to_h[:multi_ref] if op.class == Savon::Response
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
