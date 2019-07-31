# @begin data_cleaning @desc Farmers Market dataset
#   @begin clean_farmers_market @desc use open refine to clean farmers market dataset
#       @in farmersmarket.csv @uri file://initialdata/farmersmarket.csv
#       @out farmersmarketcleaned.csv @uri file://initialdata/farmersmarketcleaned.csv
#   @end clean_farmers_market @desc end cleaning dataset

#   @begin split_cleaned_farmers_market file
#   @in farmersmarketcleaned.csv @uri file://initialdata/farmersmarketcleaned.csv
#       @out market_info  @uri sqlite://database.db/market_info
#       @out market_available_goods  @uri file://data/market_available_goods
#       @out market_open_date  @uri file://data/market_open_date
#       @out market_open_time  @uri file://data/market_open_time
#       @out market_location  @uri file://data/market_location
#       @out market_payment_method  @uri file://data/market_payment_method
#   @end split cleaned farmers market file

#   @begin SQL_validate_market_info @desc use SQL to validate
#       @in market_info
#       @param validate_market_info_script
#       @out validated_market_info @uri sqlite://farmersmarket.db/validated_market_info
#   @end SQL_validate_market_info

#   @begin SQL_validate_market_available_goods @desc use SQL to validate
#       @in market_available_goods
#       @param validatemarket_available_goods_script
#       @out validate_market_available_goods @uri sqlite://farmersmarket.db/validate_market_available_goods
#   @end SQL_validate_market_available_goods

#   @begin SQL_validate_market_open_date @desc use SQL to validate
#       @in market_open_date
#       @param validate_market_open_date_script
#       @out validated_market_open_date @uri sqlite://farmersmarket.db/validate_market_open_date
#   @end SQL_validate_market_open_date

#   @begin SQL_validate_market_open_time @desc use SQL to validate
#       @in market_open_time
#       @param validate_market_open_time_script
#       @out validated_market_open_time @uri sqlite://farmersmarket.db/validate_market_open_time
#   @end SQL_validate_market_open_time

#   @begin SQL_validate_market_location @desc use SQL to validate
#       @in market_location
#       @param validate_market_location_script
#       @out validated_market_location @uri sqlite://farmersmarket.db/validate_market_location
#   @end SQL_validate_market_location

#   @begin SQL_validate_market_payement_method @desc use SQL to validate
#       @in market_payment_method
#       @param validate_market_payment_method_script
#       @out validated_market_payment_method @uri sqlite://farmersmarket.db/validate_market_payment_method
#   @end SQL_validate_market_payment_method

# @end data_cleaning
