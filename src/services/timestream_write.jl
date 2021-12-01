# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: timestream_write
using AWS.Compat
using AWS.UUIDs

"""
    create_database(database_name)
    create_database(database_name, params::Dict{String,<:Any})

Creates a new Timestream database. If the KMS key is not specified, the database will be
encrypted with a Timestream managed KMS key located in your account. Refer to Amazon Web
Services managed KMS keys for more info. Service quotas apply. See code sample for details.

# Arguments
- `database_name`: The name of the Timestream database.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"KmsKeyId"`: The KMS key for the database. If the KMS key is not specified, the database
  will be encrypted with a Timestream managed KMS key located in your account. Refer to
  Amazon Web Services managed KMS keys for more info.
- `"Tags"`:  A list of key-value pairs to label the table.
"""
function create_database(DatabaseName; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_write(
        "CreateDatabase",
        Dict{String,Any}("DatabaseName" => DatabaseName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_database(
    DatabaseName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_write(
        "CreateDatabase",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DatabaseName" => DatabaseName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_table(database_name, table_name)
    create_table(database_name, table_name, params::Dict{String,<:Any})

The CreateTable operation adds a new table to an existing database in your account. In an
Amazon Web Services account, table names must be at least unique within each Region if they
are in the same database. You may have identical table names in the same Region if the
tables are in separate databases. While creating the table, you must specify the table
name, database name, and the retention properties. Service quotas apply. See code sample
for details.

# Arguments
- `database_name`: The name of the Timestream database.
- `table_name`: The name of the Timestream table.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MagneticStoreWriteProperties"`: Contains properties to set on the table when enabling
  magnetic store writes.
- `"RetentionProperties"`: The duration for which your time series data must be stored in
  the memory store and the magnetic store.
- `"Tags"`:  A list of key-value pairs to label the table.
"""
function create_table(
    DatabaseName, TableName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_write(
        "CreateTable",
        Dict{String,Any}("DatabaseName" => DatabaseName, "TableName" => TableName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_table(
    DatabaseName,
    TableName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_write(
        "CreateTable",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("DatabaseName" => DatabaseName, "TableName" => TableName),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_database(database_name)
    delete_database(database_name, params::Dict{String,<:Any})

Deletes a given Timestream database. This is an irreversible operation. After a database is
deleted, the time series data from its tables cannot be recovered.   All tables in the
database must be deleted first, or a ValidationException error will be thrown.  Due to the
nature of distributed retries, the operation can return either success or a
ResourceNotFoundException. Clients should consider them equivalent.  See code sample for
details.

# Arguments
- `database_name`: The name of the Timestream database to be deleted.

"""
function delete_database(DatabaseName; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_write(
        "DeleteDatabase",
        Dict{String,Any}("DatabaseName" => DatabaseName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_database(
    DatabaseName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_write(
        "DeleteDatabase",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DatabaseName" => DatabaseName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_table(database_name, table_name)
    delete_table(database_name, table_name, params::Dict{String,<:Any})

Deletes a given Timestream table. This is an irreversible operation. After a Timestream
database table is deleted, the time series data stored in the table cannot be recovered.
Due to the nature of distributed retries, the operation can return either success or a
ResourceNotFoundException. Clients should consider them equivalent.  See code sample for
details.

# Arguments
- `database_name`: The name of the database where the Timestream database is to be deleted.
- `table_name`: The name of the Timestream table to be deleted.

"""
function delete_table(
    DatabaseName, TableName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_write(
        "DeleteTable",
        Dict{String,Any}("DatabaseName" => DatabaseName, "TableName" => TableName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_table(
    DatabaseName,
    TableName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_write(
        "DeleteTable",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("DatabaseName" => DatabaseName, "TableName" => TableName),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_database(database_name)
    describe_database(database_name, params::Dict{String,<:Any})

Returns information about the database, including the database name, time that the database
was created, and the total number of tables found within the database. Service quotas
apply. See code sample for details.

# Arguments
- `database_name`: The name of the Timestream database.

"""
function describe_database(DatabaseName; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_write(
        "DescribeDatabase",
        Dict{String,Any}("DatabaseName" => DatabaseName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_database(
    DatabaseName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_write(
        "DescribeDatabase",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DatabaseName" => DatabaseName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_endpoints()
    describe_endpoints(params::Dict{String,<:Any})

DescribeEndpoints returns a list of available endpoints to make Timestream API calls
against. This API is available through both Write and Query. Because the Timestream SDKs
are designed to transparently work with the service’s architecture, including the
management and mapping of the service endpoints, it is not recommended that you use this
API unless:   You are using VPC endpoints (Amazon Web Services PrivateLink) with Timestream
   Your application uses a programming language that does not yet have SDK support   You
require better control over the client-side implementation   For detailed information on
how and when to use and implement DescribeEndpoints, see The Endpoint Discovery Pattern.

"""
function describe_endpoints(; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_write(
        "DescribeEndpoints"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function describe_endpoints(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_write(
        "DescribeEndpoints", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    describe_table(database_name, table_name)
    describe_table(database_name, table_name, params::Dict{String,<:Any})

Returns information about the table, including the table name, database name, retention
duration of the memory store and the magnetic store. Service quotas apply. See code sample
for details.

# Arguments
- `database_name`: The name of the Timestream database.
- `table_name`: The name of the Timestream table.

"""
function describe_table(
    DatabaseName, TableName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_write(
        "DescribeTable",
        Dict{String,Any}("DatabaseName" => DatabaseName, "TableName" => TableName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_table(
    DatabaseName,
    TableName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_write(
        "DescribeTable",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("DatabaseName" => DatabaseName, "TableName" => TableName),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_databases()
    list_databases(params::Dict{String,<:Any})

Returns a list of your Timestream databases. Service quotas apply. See code sample for
details.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The total number of items to return in the output. If the total number of
  items available is more than the value specified, a NextToken is provided in the output. To
  resume pagination, provide the NextToken value as argument of a subsequent API invocation.
- `"NextToken"`: The pagination token. To resume pagination, provide the NextToken value as
  argument of a subsequent API invocation.
"""
function list_databases(; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_write(
        "ListDatabases"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_databases(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_write(
        "ListDatabases", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_tables()
    list_tables(params::Dict{String,<:Any})

A list of tables, along with the name, status and retention properties of each table. See
code sample for details.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DatabaseName"`: The name of the Timestream database.
- `"MaxResults"`: The total number of items to return in the output. If the total number of
  items available is more than the value specified, a NextToken is provided in the output. To
  resume pagination, provide the NextToken value as argument of a subsequent API invocation.
- `"NextToken"`: The pagination token. To resume pagination, provide the NextToken value as
  argument of a subsequent API invocation.
"""
function list_tables(; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_write(
        "ListTables"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_tables(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_write(
        "ListTables", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

 List all tags on a Timestream resource.

# Arguments
- `resource_arn`:  The Timestream resource with tags to be listed. This value is an Amazon
  Resource Name (ARN).

"""
function list_tags_for_resource(
    ResourceARN; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_write(
        "ListTagsForResource",
        Dict{String,Any}("ResourceARN" => ResourceARN);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    ResourceARN,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_write(
        "ListTagsForResource",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("ResourceARN" => ResourceARN), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

 Associate a set of tags with a Timestream resource. You can then activate these
user-defined tags so that they appear on the Billing and Cost Management console for cost
allocation tracking.

# Arguments
- `resource_arn`:  Identifies the Timestream resource to which tags should be added. This
  value is an Amazon Resource Name (ARN).
- `tags`:  The tags to be assigned to the Timestream resource.

"""
function tag_resource(ResourceARN, Tags; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_write(
        "TagResource",
        Dict{String,Any}("ResourceARN" => ResourceARN, "Tags" => Tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    ResourceARN,
    Tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_write(
        "TagResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("ResourceARN" => ResourceARN, "Tags" => Tags),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

 Removes the association of tags from a Timestream resource.

# Arguments
- `resource_arn`:  The Timestream resource that the tags will be removed from. This value
  is an Amazon Resource Name (ARN).
- `tag_keys`:  A list of tags keys. Existing tags of the resource whose keys are members of
  this list will be removed from the Timestream resource.

"""
function untag_resource(
    ResourceARN, TagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_write(
        "UntagResource",
        Dict{String,Any}("ResourceARN" => ResourceARN, "TagKeys" => TagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    ResourceARN,
    TagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_write(
        "UntagResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("ResourceARN" => ResourceARN, "TagKeys" => TagKeys),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_database(database_name, kms_key_id)
    update_database(database_name, kms_key_id, params::Dict{String,<:Any})

 Modifies the KMS key for an existing database. While updating the database, you must
specify the database name and the identifier of the new KMS key to be used (KmsKeyId). If
there are any concurrent UpdateDatabase requests, first writer wins.  See code sample for
details.

# Arguments
- `database_name`:  The name of the database.
- `kms_key_id`:  The identifier of the new KMS key (KmsKeyId) to be used to encrypt the
  data stored in the database. If the KmsKeyId currently registered with the database is the
  same as the KmsKeyId in the request, there will not be any update.  You can specify the
  KmsKeyId using any of the following:   Key ID: 1234abcd-12ab-34cd-56ef-1234567890ab    Key
  ARN: arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab    Alias
  name: alias/ExampleAlias    Alias ARN:
  arn:aws:kms:us-east-1:111122223333:alias/ExampleAlias

"""
function update_database(
    DatabaseName, KmsKeyId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_write(
        "UpdateDatabase",
        Dict{String,Any}("DatabaseName" => DatabaseName, "KmsKeyId" => KmsKeyId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_database(
    DatabaseName,
    KmsKeyId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_write(
        "UpdateDatabase",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("DatabaseName" => DatabaseName, "KmsKeyId" => KmsKeyId),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_table(database_name, table_name)
    update_table(database_name, table_name, params::Dict{String,<:Any})

Modifies the retention duration of the memory store and magnetic store for your Timestream
table. Note that the change in retention duration takes effect immediately. For example, if
the retention period of the memory store was initially set to 2 hours and then changed to
24 hours, the memory store will be capable of holding 24 hours of data, but will be
populated with 24 hours of data 22 hours after this change was made. Timestream does not
retrieve data from the magnetic store to populate the memory store.  See code sample for
details.

# Arguments
- `database_name`: The name of the Timestream database.
- `table_name`: The name of the Timestream table.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MagneticStoreWriteProperties"`: Contains properties to set on the table when enabling
  magnetic store writes.
- `"RetentionProperties"`: The retention duration of the memory store and the magnetic
  store.
"""
function update_table(
    DatabaseName, TableName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_write(
        "UpdateTable",
        Dict{String,Any}("DatabaseName" => DatabaseName, "TableName" => TableName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_table(
    DatabaseName,
    TableName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_write(
        "UpdateTable",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("DatabaseName" => DatabaseName, "TableName" => TableName),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    write_records(database_name, records, table_name)
    write_records(database_name, records, table_name, params::Dict{String,<:Any})

The WriteRecords operation enables you to write your time series data into Timestream. You
can specify a single data point or a batch of data points to be inserted into the system.
Timestream offers you with a flexible schema that auto detects the column names and data
types for your Timestream tables based on the dimension names and data types of the data
points you specify when invoking writes into the database. Timestream support eventual
consistency read semantics. This means that when you query data immediately after writing a
batch of data into Timestream, the query results might not reflect the results of a
recently completed write operation. The results may also include some stale data. If you
repeat the query request after a short time, the results should return the latest data.
Service quotas apply.  See code sample for details.  Upserts  You can use the Version
parameter in a WriteRecords request to update data points. Timestream tracks a version
number with each record. Version defaults to 1 when not specified for the record in the
request. Timestream will update an existing record’s measure value along with its Version
upon receiving a write request with a higher Version number for that record. Upon receiving
an update request where the measure value is the same as that of the existing record,
Timestream still updates Version, if it is greater than the existing value of Version. You
can update a data point as many times as desired, as long as the value of Version
continuously increases.   For example, suppose you write a new record without indicating
Version in the request. Timestream will store this record, and set Version to 1. Now,
suppose you try to update this record with a WriteRecords request of the same record with a
different measure value but, like before, do not provide Version. In this case, Timestream
will reject this update with a RejectedRecordsException since the updated record’s
version is not greater than the existing value of Version. However, if you were to resend
the update request with Version set to 2, Timestream would then succeed in updating the
record’s value, and the Version would be set to 2. Next, suppose you sent a WriteRecords
request with this same record and an identical measure value, but with Version set to 3. In
this case, Timestream would only update Version to 3. Any further updates would need to
send a version number greater than 3, or the update requests would receive a
RejectedRecordsException.

# Arguments
- `database_name`: The name of the Timestream database.
- `records`: An array of records containing the unique measure, dimension, time, and
  version attributes for each time series data point.
- `table_name`: The name of the Timestream table.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CommonAttributes"`: A record containing the common measure, dimension, time, and
  version attributes shared across all the records in the request. The measure and dimension
  attributes specified will be merged with the measure and dimension attributes in the
  records object when the data is written into Timestream. Dimensions may not overlap, or a
  ValidationException will be thrown. In other words, a record must contain dimensions with
  unique names.
"""
function write_records(
    DatabaseName, Records, TableName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_write(
        "WriteRecords",
        Dict{String,Any}(
            "DatabaseName" => DatabaseName, "Records" => Records, "TableName" => TableName
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function write_records(
    DatabaseName,
    Records,
    TableName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_write(
        "WriteRecords",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "DatabaseName" => DatabaseName,
                    "Records" => Records,
                    "TableName" => TableName,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
