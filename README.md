# DolarRealbr

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/dolar_realbr`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dolar_realbr', '0.2.0'
```

And then execute:

    $ bundle


## Function

```ruby
	value_currency2realBR({currency:  'dollar', type:  'buy', date: 'DD/MM/YYYY'})
```

```ruby
  	value_realBR2currency({currency:  'dolar', type:  'buy', date: 'DD/MM/YYYY'})
```

```ruby
  	convert_currency2realBR({value: 1_000, currency:  'dolar', type:  'buy', date: 'DD/MM/YYYY'})
```	

```ruby
	convert_realBR2currency({value: 1.00, currency:  'dolar', type:  'buy', date: 'DD/MM/YYYY'})  	
```


## Usage


| NAME               | CURRENCY           | TYPE |
|--------------------|--------------------|------|
| Dollar             | dollar             |	sale |
| Dollar             | dollar 			      |	buy  |
| Euro				       | euro 			        |	sale |
| Euro				       | euro				        |	buy  |
| Yen				         | yen 				        |	sale | 
| Yen			           | yen 				        |	buy  |
| Pound Sterling	   | pound_sterling 	  | sale | 
| Pound Sterling     | pound_sterling 	  | buy  |
| Swiss Franc		     | swiss_franc		    |	sale |
| Swiss Franc		     | swiss_franc 		    |	buy  |
| Danish Krone		   | danish_krone 	    |	sale |
| Danish Krone		   | danish_krone 	    |	buy  |
| Norwegian Krone	   | norwegian_krone 	  |	sale |
| Norwegian	Krone	   | norwegian_krone 	  |	buy  |
| Swedish Krona		   | swedish_krona 	    |	sale |
| Swedish Krona		   | swedish_krona 	    |	buy  |
| Australian Dollar	 | australian_dollar  |	sale |
| Australian Dollar	 | australian_dollar  |	buy  |
| Canadian Dollar	   | canadian_dollar    |	sale |
| Canadian Dollar	   | canadian_dollar 	  |	buy  |


```ruby
	require 'dolar_realbr'

	dol = DolarRealbr::Convert.new
```

cotacao sem data 

```ruby
	dol.value_value_currency2realBR({currency:  'euro', type:  'sale', date: '08/08/2014'})
	dol.get_value // get value 
	dol.get_date  // get date
```

cotacao com data

```ruby
	dol.value_realBR2currency({currency:  'euro', type:  'sale', date: '08/08/2014'})
	dol.get_value // get value 
	dol.get_date  // get date
```

conversao de valores sem data

```ruby
	dol.convert_currency2realBR({value: 100, currency: 'dollar', type: 'buy'})
	dol.get_value // get value 
	dol.get_date  // get date
```

conversao de valores com data

```ruby
	dol.convert_currency2realBR({value: 100, currency: 'dollar', type: 'buy', date: '10/08/2015'})
	dol.get_value // get value
	dol.get_date  // get date
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/dolar_realbr.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

