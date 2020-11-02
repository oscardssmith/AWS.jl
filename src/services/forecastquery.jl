# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: forecastquery
using AWS.Compat
using AWS.UUIDs

"""
    QueryForecast()

Retrieves a forecast for a single item, filtered by the supplied criteria. The criteria is a key-value pair. The key is either item_id (or the equivalent non-timestamp, non-target field) from the TARGET_TIME_SERIES dataset, or one of the forecast dimensions specified as part of the FeaturizationConfig object. By default, QueryForecast returns the complete date range for the filtered forecast. You can request a specific date range. To get the full forecast, use the CreateForecastExportJob operation.  The forecasts generated by Amazon Forecast are in the same timezone as the dataset that was used to create the predictor. 

# Required Parameters
- `Filters`: The filtering criteria to apply when retrieving the forecast. For example, to get the forecast for client_21 in the electricity usage dataset, specify the following:  {\"item_id\" : \"client_21\"}  To get the full forecast, use the CreateForecastExportJob operation.
- `ForecastArn`: The Amazon Resource Name (ARN) of the forecast to query.

# Optional Parameters
- `EndDate`: The end date for the forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example, 2015-01-01T20:00:00. 
- `NextToken`: If the result of the previous request was truncated, the response includes a NextToken. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.
- `StartDate`: The start date for the forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example, 2015-01-01T08:00:00.
"""
query_forecast(Filters, ForecastArn; aws_config::AWSConfig=global_aws_config()) = forecastquery("QueryForecast", Dict{String, Any}("Filters"=>Filters, "ForecastArn"=>ForecastArn); aws_config=aws_config)
query_forecast(Filters, ForecastArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = forecastquery("QueryForecast", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Filters"=>Filters, "ForecastArn"=>ForecastArn), args)); aws_config=aws_config)
