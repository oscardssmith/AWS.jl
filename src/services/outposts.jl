# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: outposts
using AWS.Compat
using AWS.UUIDs

"""
    cancel_order(order_id)
    cancel_order(order_id, params::Dict{String,<:Any})

 Cancels an order for an Outpost.

# Arguments
- `order_id`:  The ID of the order to cancel.

"""
function cancel_order(OrderId; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "POST",
        "/orders/$(OrderId)/cancel";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function cancel_order(
    OrderId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "POST",
        "/orders/$(OrderId)/cancel",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_order(line_items, outpost_identifier, payment_option)
    create_order(line_items, outpost_identifier, payment_option, params::Dict{String,<:Any})

Creates an order for an Outpost.

# Arguments
- `line_items`: The line items that make up the order.
- `outpost_identifier`:  The ID or the Amazon Resource Name (ARN) of the Outpost.
- `payment_option`: The payment option for the order.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"PaymentTerm"`: The payment terms for the order.
"""
function create_order(
    LineItems,
    OutpostIdentifier,
    PaymentOption;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return outposts(
        "POST",
        "/orders",
        Dict{String,Any}(
            "LineItems" => LineItems,
            "OutpostIdentifier" => OutpostIdentifier,
            "PaymentOption" => PaymentOption,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_order(
    LineItems,
    OutpostIdentifier,
    PaymentOption,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return outposts(
        "POST",
        "/orders",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "LineItems" => LineItems,
                    "OutpostIdentifier" => OutpostIdentifier,
                    "PaymentOption" => PaymentOption,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_outpost(name, site_id)
    create_outpost(name, site_id, params::Dict{String,<:Any})

Creates an Outpost. You can specify AvailabilityZone or AvailabilityZoneId.

# Arguments
- `name`:
- `site_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AvailabilityZone"`:
- `"AvailabilityZoneId"`:
- `"Description"`:
- `"SupportedHardwareType"`:  The type of hardware for this Outpost.
- `"Tags"`: The tags to apply to the Outpost.
"""
function create_outpost(Name, SiteId; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "POST",
        "/outposts",
        Dict{String,Any}("Name" => Name, "SiteId" => SiteId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_outpost(
    Name,
    SiteId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return outposts(
        "POST",
        "/outposts",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("Name" => Name, "SiteId" => SiteId), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_site(name)
    create_site(name, params::Dict{String,<:Any})

 Creates a site for an Outpost.

# Arguments
- `name`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`:
- `"Notes"`: Additional information that you provide about site access requirements,
  electrician scheduling, personal protective equipment, or regulation of equipment materials
  that could affect your installation process.
- `"OperatingAddress"`:  The location to install and power on the hardware. This address
  might be different from the shipping address.
- `"RackPhysicalProperties"`:  Information about the physical and logistical details for
  the rack at this site. For more information about hardware requirements for racks, see
  Network readiness checklist in the Amazon Web Services Outposts User Guide.
- `"ShippingAddress"`:  The location to ship the hardware. This address might be different
  from the operating address.
- `"Tags"`:  The tags to apply to a site.
"""
function create_site(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "POST",
        "/sites",
        Dict{String,Any}("Name" => Name);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_site(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "POST",
        "/sites",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Name" => Name), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_outpost(outpost_id)
    delete_outpost(outpost_id, params::Dict{String,<:Any})

Deletes the Outpost.

# Arguments
- `outpost_id`:  The ID of the Outpost.

"""
function delete_outpost(OutpostId; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "DELETE",
        "/outposts/$(OutpostId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_outpost(
    OutpostId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return outposts(
        "DELETE",
        "/outposts/$(OutpostId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_site(site_id)
    delete_site(site_id, params::Dict{String,<:Any})

Deletes the site.

# Arguments
- `site_id`:

"""
function delete_site(SiteId; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "DELETE", "/sites/$(SiteId)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function delete_site(
    SiteId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "DELETE",
        "/sites/$(SiteId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_catalog_item(catalog_item_id)
    get_catalog_item(catalog_item_id, params::Dict{String,<:Any})

Gets information about a catalog item.

# Arguments
- `catalog_item_id`: The ID of the catalog item.

"""
function get_catalog_item(CatalogItemId; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "GET",
        "/catalog/item/$(CatalogItemId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_catalog_item(
    CatalogItemId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return outposts(
        "GET",
        "/catalog/item/$(CatalogItemId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_order(order_id)
    get_order(order_id, params::Dict{String,<:Any})

Gets an order.

# Arguments
- `order_id`: The ID of the order.

"""
function get_order(OrderId; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "GET", "/orders/$(OrderId)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function get_order(
    OrderId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "GET",
        "/orders/$(OrderId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_outpost(outpost_id)
    get_outpost(outpost_id, params::Dict{String,<:Any})

Gets information about the specified Outpost.

# Arguments
- `outpost_id`:  The ID of the Outpost.

"""
function get_outpost(OutpostId; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "GET",
        "/outposts/$(OutpostId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_outpost(
    OutpostId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return outposts(
        "GET",
        "/outposts/$(OutpostId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_outpost_instance_types(outpost_id)
    get_outpost_instance_types(outpost_id, params::Dict{String,<:Any})

Lists the instance types for the specified Outpost.

# Arguments
- `outpost_id`:  The ID of the Outpost.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`:
- `"NextToken"`:
"""
function get_outpost_instance_types(
    OutpostId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "GET",
        "/outposts/$(OutpostId)/instanceTypes";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_outpost_instance_types(
    OutpostId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return outposts(
        "GET",
        "/outposts/$(OutpostId)/instanceTypes",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_site(site_id)
    get_site(site_id, params::Dict{String,<:Any})

 Gets information about the specified Outpost site.

# Arguments
- `site_id`:

"""
function get_site(SiteId; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "GET", "/sites/$(SiteId)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function get_site(
    SiteId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "GET",
        "/sites/$(SiteId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_site_address(address_type, site_id)
    get_site_address(address_type, site_id, params::Dict{String,<:Any})

 Gets the site address.

# Arguments
- `address_type`:  The type of the address you request.
- `site_id`:

"""
function get_site_address(
    AddressType, SiteId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "GET",
        "/sites/$(SiteId)/address",
        Dict{String,Any}("AddressType" => AddressType);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_site_address(
    AddressType,
    SiteId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return outposts(
        "GET",
        "/sites/$(SiteId)/address",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("AddressType" => AddressType), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_catalog_items()
    list_catalog_items(params::Dict{String,<:Any})

Use to create a list of every item in the catalog. Add filters to your request to return a
more specific list of results. Use filters to match an item class, storage option, or EC2
family.  If you specify multiple filters, the filters are joined with an AND, and the
request returns only results that match all of the specified filters.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"EC2FamilyFilter"`:  A filter for EC2 family options for items in the catalog.  Filter
  values are case sensitive. If you specify multiple values for a filter, the values are
  joined with an OR, and the request returns all results that match any of the specified
  values.
- `"ItemClassFilter"`:  A filter for the class of items in the catalog.  Filter values are
  case sensitive. If you specify multiple values for a filter, the values are joined with an
  OR, and the request returns all results that match any of the specified values.
- `"MaxResults"`:
- `"NextToken"`:
- `"SupportedStorageFilter"`:  A filter for the storage options of items in the catalog.
  Filter values are case sensitive. If you specify multiple values for a filter, the values
  are joined with an OR, and the request returns all results that match any of the specified
  values.
"""
function list_catalog_items(; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "GET", "/catalog/items"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_catalog_items(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "GET",
        "/catalog/items",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_orders()
    list_orders(params::Dict{String,<:Any})

Create a list of the Outpost orders for your Amazon Web Services account. You can filter
your request by Outpost to return a more specific list of results.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`:
- `"NextToken"`:
- `"OutpostIdentifierFilter"`:  The ID or the Amazon Resource Name (ARN) of the Outpost.
"""
function list_orders(; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "GET", "/list-orders"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_orders(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "GET",
        "/list-orders",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_outposts()
    list_outposts(params::Dict{String,<:Any})

Create a list of the Outposts for your Amazon Web Services account. Add filters to your
request to return a more specific list of results. Use filters to match an Outpost
lifecycle status, Availability Zone (us-east-1a), and AZ ID (use1-az1).  If you specify
multiple filters, the filters are joined with an AND, and the request returns only results
that match all of the specified filters.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AvailabilityZoneFilter"`:  A filter for the Availability Zone (us-east-1a) of the
  Outpost.  Filter values are case sensitive. If you specify multiple values for a filter,
  the values are joined with an OR, and the request returns all results that match any of the
  specified values.
- `"AvailabilityZoneIdFilter"`:  A filter for the AZ IDs (use1-az1) of the Outpost.  Filter
  values are case sensitive. If you specify multiple values for a filter, the values are
  joined with an OR, and the request returns all results that match any of the specified
  values.
- `"LifeCycleStatusFilter"`:  A filter for the lifecycle status of the Outpost.  Filter
  values are case sensitive. If you specify multiple values for a filter, the values are
  joined with an OR, and the request returns all results that match any of the specified
  values.
- `"MaxResults"`:
- `"NextToken"`:
"""
function list_outposts(; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "GET", "/outposts"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_outposts(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "GET", "/outposts", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_sites()
    list_sites(params::Dict{String,<:Any})

Lists the sites for your Amazon Web Services account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`:
- `"NextToken"`:
"""
function list_sites(; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts("GET", "/sites"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function list_sites(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "GET", "/sites", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Lists the tags for the specified resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource.

"""
function list_tags_for_resource(
    ResourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "GET",
        "/tags/$(ResourceArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    ResourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return outposts(
        "GET",
        "/tags/$(ResourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Adds tags to the specified resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource.
- `tags`: The tags to add to the resource.

"""
function tag_resource(ResourceArn, Tags; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "POST",
        "/tags/$(ResourceArn)",
        Dict{String,Any}("Tags" => Tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    ResourceArn,
    Tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return outposts(
        "POST",
        "/tags/$(ResourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Tags" => Tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes tags from the specified resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource.
- `tag_keys`: The tag keys.

"""
function untag_resource(
    ResourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "DELETE",
        "/tags/$(ResourceArn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    ResourceArn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return outposts(
        "DELETE",
        "/tags/$(ResourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_site(site_id)
    update_site(site_id, params::Dict{String,<:Any})

 Updates the site.

# Arguments
- `site_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`:
- `"Name"`:
- `"Notes"`:  Notes about a site.
"""
function update_site(SiteId; aws_config::AbstractAWSConfig=global_aws_config())
    return outposts(
        "PATCH", "/sites/$(SiteId)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function update_site(
    SiteId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "PATCH",
        "/sites/$(SiteId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_site_address(address, address_type, site_id)
    update_site_address(address, address_type, site_id, params::Dict{String,<:Any})

 Updates the site address.   To update a site address with an order IN_PROGRESS, you must
wait for the order to complete or cancel the order.  You can update the operating address
before you place an order at the site, or after all Outposts that belong to the site have
been deactivated.

# Arguments
- `address`:  The address for the site.
- `address_type`:  The type of the address.
- `site_id`:

"""
function update_site_address(
    Address, AddressType, SiteId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "PUT",
        "/sites/$(SiteId)/address",
        Dict{String,Any}("Address" => Address, "AddressType" => AddressType);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_site_address(
    Address,
    AddressType,
    SiteId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return outposts(
        "PUT",
        "/sites/$(SiteId)/address",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("Address" => Address, "AddressType" => AddressType),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_site_rack_physical_properties(site_id)
    update_site_rack_physical_properties(site_id, params::Dict{String,<:Any})

Update the physical and logistical details for a rack at a site. For more information about
hardware requirements for racks, see Network readiness checklist in the Amazon Web Services
Outposts User Guide.  To update a rack at a site with an order of IN_PROGRESS, you must
wait for the order to complete or cancel the order.

# Arguments
- `site_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"FiberOpticCableType"`:  Specify the type of fiber that you will use to attach the
  Outpost to your network.
- `"MaximumSupportedWeightLbs"`:  Specify the maximum rack weight that this site can
  support. NO_LIMIT is over 2000lbs.
- `"OpticalStandard"`: Specify the type of optical standard that you will use to attach the
  Outpost to your network. This field is dependent on uplink speed, fiber type, and distance
  to the upstream device. For more information about networking requirements for racks, see
  Network in the Amazon Web Services Outposts User Guide.     OPTIC_10GBASE_SR: 10GBASE-SR
  OPTIC_10GBASE_IR: 10GBASE-IR    OPTIC_10GBASE_LR: 10GBASE-LR    OPTIC_40GBASE_SR:
  40GBASE-SR    OPTIC_40GBASE_ESR: 40GBASE-ESR    OPTIC_40GBASE_IR4_LR4L: 40GBASE-IR (LR4L)
   OPTIC_40GBASE_LR4: 40GBASE-LR4    OPTIC_100GBASE_SR4: 100GBASE-SR4
  OPTIC_100GBASE_CWDM4: 100GBASE-CWDM4    OPTIC_100GBASE_LR4: 100GBASE-LR4
  OPTIC_100G_PSM4_MSA: 100G PSM4 MSA    OPTIC_1000BASE_LX: 1000Base-LX    OPTIC_1000BASE_SX :
  1000Base-SX
- `"PowerConnector"`:  Specify the power connector that Amazon Web Services should plan to
  provide for connections to the hardware. Note the correlation between PowerPhase and
  PowerConnector.    Single-phase AC feed    L6-30P – (common in US); 30A; single phase
  IEC309 (blue) – P+N+E, 6hr; 32 A; single phase     Three-phase AC feed    AH530P7W (red)
  – 3P+N+E, 7hr; 30A; three phase    AH532P6W (red) – 3P+N+E, 6hr; 32A; three phase
- `"PowerDrawKva"`: Specify in kVA the power draw available at the hardware placement
  position for the rack.
- `"PowerFeedDrop"`:  Specify whether the power feed comes above or below the rack.
- `"PowerPhase"`:  Specify the power option that you can provide for hardware.
  Single-phase AC feed: 200 V to 277 V, 50 Hz or 60 Hz   Three-phase AC feed: 346 V to 480 V,
  50 Hz or 60 Hz
- `"UplinkCount"`: Racks come with two Outpost network devices. Depending on the supported
  uplink speed at the site, the Outpost network devices provide a variable number of uplinks.
  Specify the number of uplinks for each Outpost network device that you intend to use to
  connect the rack to your network. Note the correlation between UplinkGbps and UplinkCount.
    1Gbps - Uplinks available: 1, 2, 4, 6, 8   10Gbps - Uplinks available: 1, 2, 4, 8, 12, 16
    40 and 100 Gbps- Uplinks available: 1, 2, 4
- `"UplinkGbps"`:  Specify the uplink speed the rack should support for the connection to
  the Region.
"""
function update_site_rack_physical_properties(
    SiteId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "PATCH",
        "/sites/$(SiteId)/rackPhysicalProperties";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_site_rack_physical_properties(
    SiteId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return outposts(
        "PATCH",
        "/sites/$(SiteId)/rackPhysicalProperties",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
