# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: route53_recovery_control_config
using AWS.Compat
using AWS.UUIDs

"""
    create_cluster(cluster_name)
    create_cluster(cluster_name, params::Dict{String,<:Any})

Create a new cluster. A cluster is a set of redundant Regional endpoints against which you
can run API calls to update or get the state of one or more routing controls. Each cluster
has a name, status, Amazon Resource Name (ARN), and an array of the five cluster endpoints
(one for each supported Amazon Web Services Region) that you can use with API calls to the
Amazon Route 53 Application Recovery Controller cluster data plane.

# Arguments
- `cluster_name`: The name of the cluster.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: Unique client idempotency token.
"""
function create_cluster(ClusterName; aws_config::AbstractAWSConfig=global_aws_config())
    return route53_recovery_control_config(
        "POST",
        "/cluster",
        Dict{String,Any}("ClusterName" => ClusterName, "ClientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_cluster(
    ClusterName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "POST",
        "/cluster",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ClusterName" => ClusterName, "ClientToken" => string(uuid4())
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_control_panel(cluster_arn, control_panel_name)
    create_control_panel(cluster_arn, control_panel_name, params::Dict{String,<:Any})

Creates a new control panel. A control panel represents a group of routing controls that
can be changed together in a single transaction. You can use a control panel to centrally
view the operational status of applications across your organization, and trigger multi-app
failovers in a single transaction, for example, to fail over an Availability Zone or AWS
Region.

# Arguments
- `cluster_arn`: The Amazon Resource Name (ARN) of the cluster for the control panel.
- `control_panel_name`: The name of the control panel.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: Unique client idempotency token.
"""
function create_control_panel(
    ClusterArn, ControlPanelName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "POST",
        "/controlpanel",
        Dict{String,Any}(
            "ClusterArn" => ClusterArn,
            "ControlPanelName" => ControlPanelName,
            "ClientToken" => string(uuid4()),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_control_panel(
    ClusterArn,
    ControlPanelName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "POST",
        "/controlpanel",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ClusterArn" => ClusterArn,
                    "ControlPanelName" => ControlPanelName,
                    "ClientToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_routing_control(cluster_arn, routing_control_name)
    create_routing_control(cluster_arn, routing_control_name, params::Dict{String,<:Any})

Creates a new routing control. A routing control has one of two states: ON and OFF. You can
map the routing control state to the state of an Amazon Route 53 health check, which can be
used to control traffic routing. To get or update the routing control state, see the
Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery
Controller.

# Arguments
- `cluster_arn`: The Amazon Resource Name (ARN) of the cluster that includes the routing
  control.
- `routing_control_name`: The name of the routing control.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: Unique client idempotency token.
- `"ControlPanelArn"`: The Amazon Resource Name (ARN) of the control panel that includes
  the routing control.
"""
function create_routing_control(
    ClusterArn, RoutingControlName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "POST",
        "/routingcontrol",
        Dict{String,Any}(
            "ClusterArn" => ClusterArn,
            "RoutingControlName" => RoutingControlName,
            "ClientToken" => string(uuid4()),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_routing_control(
    ClusterArn,
    RoutingControlName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "POST",
        "/routingcontrol",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ClusterArn" => ClusterArn,
                    "RoutingControlName" => RoutingControlName,
                    "ClientToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_safety_rule()
    create_safety_rule(params::Dict{String,<:Any})

Creates a safety rule in a control panel. Safety rules let you add safeguards around
enabling and disabling routing controls, to help prevent unexpected outcomes. There are two
types of safety rules: assertion rules and gating rules. Assertion rule: An assertion rule
enforces that, when a routing control state is changed, the criteria set by the rule
configuration is met. Otherwise, the change to the routing control is not accepted. Gating
rule: A gating rule verifies that a set of gating controls evaluates as true, based on a
rule configuration that you specify. If the gating rule evaluates to true, Amazon Route 53
Application Recovery Controller allows a set of routing control state changes to run and
complete against the set of target controls.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AssertionRule"`:
- `"ClientToken"`: Unique client idempotency token.
- `"GatingRule"`:
"""
function create_safety_rule(; aws_config::AbstractAWSConfig=global_aws_config())
    return route53_recovery_control_config(
        "POST",
        "/safetyrule",
        Dict{String,Any}("ClientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_safety_rule(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "POST",
        "/safetyrule",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("ClientToken" => string(uuid4())), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_cluster(cluster_arn)
    delete_cluster(cluster_arn, params::Dict{String,<:Any})

Delete a cluster.

# Arguments
- `cluster_arn`: The Amazon Resource Name (ARN) of the cluster that you're deleting.

"""
function delete_cluster(ClusterArn; aws_config::AbstractAWSConfig=global_aws_config())
    return route53_recovery_control_config(
        "DELETE",
        "/cluster/$(ClusterArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_cluster(
    ClusterArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "DELETE",
        "/cluster/$(ClusterArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_control_panel(control_panel_arn)
    delete_control_panel(control_panel_arn, params::Dict{String,<:Any})

Deletes a control panel.

# Arguments
- `control_panel_arn`: The Amazon Resource Name (ARN) of the control panel that you're
  deleting.

"""
function delete_control_panel(
    ControlPanelArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "DELETE",
        "/controlpanel/$(ControlPanelArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_control_panel(
    ControlPanelArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "DELETE",
        "/controlpanel/$(ControlPanelArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_routing_control(routing_control_arn)
    delete_routing_control(routing_control_arn, params::Dict{String,<:Any})

Deletes a routing control.

# Arguments
- `routing_control_arn`: The Amazon Resource Name (ARN) of the routing control that you're
  deleting.

"""
function delete_routing_control(
    RoutingControlArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "DELETE",
        "/routingcontrol/$(RoutingControlArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_routing_control(
    RoutingControlArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "DELETE",
        "/routingcontrol/$(RoutingControlArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_safety_rule(safety_rule_arn)
    delete_safety_rule(safety_rule_arn, params::Dict{String,<:Any})

Deletes a safety rule./&gt;

# Arguments
- `safety_rule_arn`: The request body that you include when you update a safety rule.

"""
function delete_safety_rule(
    SafetyRuleArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "DELETE",
        "/safetyrule/$(SafetyRuleArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_safety_rule(
    SafetyRuleArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "DELETE",
        "/safetyrule/$(SafetyRuleArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_cluster(cluster_arn)
    describe_cluster(cluster_arn, params::Dict{String,<:Any})

Display the details about a cluster. The response includes the cluster name, endpoints,
status, and Amazon Resource Name (ARN).

# Arguments
- `cluster_arn`: The Amazon Resource Name (ARN) of the cluster that you're getting details
  for.

"""
function describe_cluster(ClusterArn; aws_config::AbstractAWSConfig=global_aws_config())
    return route53_recovery_control_config(
        "GET",
        "/cluster/$(ClusterArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_cluster(
    ClusterArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "GET",
        "/cluster/$(ClusterArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_control_panel(control_panel_arn)
    describe_control_panel(control_panel_arn, params::Dict{String,<:Any})

Displays details about a control panel.

# Arguments
- `control_panel_arn`: The Amazon Resource Name (ARN) of the control panel that you're
  getting details for.

"""
function describe_control_panel(
    ControlPanelArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "GET",
        "/controlpanel/$(ControlPanelArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_control_panel(
    ControlPanelArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "GET",
        "/controlpanel/$(ControlPanelArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_routing_control(routing_control_arn)
    describe_routing_control(routing_control_arn, params::Dict{String,<:Any})

Displays details about a routing control. A routing control has one of two states: ON and
OFF. You can map the routing control state to the state of an Amazon Route 53 health check,
which can be used to control routing. To get or update the routing control state, see the
Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery
Controller.

# Arguments
- `routing_control_arn`: The Amazon Resource Name (ARN) of the routing control that you're
  getting details for.

"""
function describe_routing_control(
    RoutingControlArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "GET",
        "/routingcontrol/$(RoutingControlArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_routing_control(
    RoutingControlArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "GET",
        "/routingcontrol/$(RoutingControlArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_safety_rule(safety_rule_arn)
    describe_safety_rule(safety_rule_arn, params::Dict{String,<:Any})

Describes the safety rules (that is, the assertion rules and gating rules) for the routing
controls in a control panel.

# Arguments
- `safety_rule_arn`: The request body that you include when you update a safety rule.

"""
function describe_safety_rule(
    SafetyRuleArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "GET",
        "/safetyrule/$(SafetyRuleArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_safety_rule(
    SafetyRuleArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "GET",
        "/safetyrule/$(SafetyRuleArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_associated_route53_health_checks(routing_control_arn)
    list_associated_route53_health_checks(routing_control_arn, params::Dict{String,<:Any})

Returns an array of all Amazon Route 53 health checks associated with a specific routing
control.

# Arguments
- `routing_control_arn`: The Amazon Resource Name (ARN) of the routing control that you're
  getting details for.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The number of objects that you want to return with this call.
- `"NextToken"`: The token that identifies which batch of results you want to see.
"""
function list_associated_route53_health_checks(
    RoutingControlArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "GET",
        "/routingcontrol/$(RoutingControlArn)/associatedRoute53HealthChecks";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_associated_route53_health_checks(
    RoutingControlArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "GET",
        "/routingcontrol/$(RoutingControlArn)/associatedRoute53HealthChecks",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_clusters()
    list_clusters(params::Dict{String,<:Any})

Returns an array of all the clusters in an account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The number of objects that you want to return with this call.
- `"NextToken"`: The token that identifies which batch of results you want to see.
"""
function list_clusters(; aws_config::AbstractAWSConfig=global_aws_config())
    return route53_recovery_control_config(
        "GET", "/cluster"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_clusters(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "GET", "/cluster", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_control_panels()
    list_control_panels(params::Dict{String,<:Any})

Returns an array of control panels for a cluster.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClusterArn"`: The Amazon Resource Name (ARN) of a cluster.
- `"MaxResults"`: The number of objects that you want to return with this call.
- `"NextToken"`: The token that identifies which batch of results you want to see.
"""
function list_control_panels(; aws_config::AbstractAWSConfig=global_aws_config())
    return route53_recovery_control_config(
        "GET", "/controlpanels"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_control_panels(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "GET",
        "/controlpanels",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_routing_controls(control_panel_arn)
    list_routing_controls(control_panel_arn, params::Dict{String,<:Any})

Returns an array of routing controls for a control panel. A routing control is an Amazon
Route 53 Application Recovery Controller construct that has one of two states: ON and OFF.
You can map the routing control state to the state of an Amazon Route 53 health check,
which can be used to control routing.

# Arguments
- `control_panel_arn`: The Amazon Resource Name (ARN) of the control panel that you're
  getting routing control details for.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The number of objects that you want to return with this call.
- `"NextToken"`: The token that identifies which batch of results you want to see.
"""
function list_routing_controls(
    ControlPanelArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "GET",
        "/controlpanel/$(ControlPanelArn)/routingcontrols";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_routing_controls(
    ControlPanelArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "GET",
        "/controlpanel/$(ControlPanelArn)/routingcontrols",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_safety_rules(control_panel_arn)
    list_safety_rules(control_panel_arn, params::Dict{String,<:Any})

List the safety rules (the assertion rules and gating rules) that you've defined for the
routing controls in a control panel.

# Arguments
- `control_panel_arn`: The Amazon Resource Name (ARN) of the control panel that you're
  getting details for.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The number of objects that you want to return with this call.
- `"NextToken"`: The token that identifies which batch of results you want to see.
"""
function list_safety_rules(
    ControlPanelArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "GET",
        "/controlpanel/$(ControlPanelArn)/safetyrules";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_safety_rules(
    ControlPanelArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "GET",
        "/controlpanel/$(ControlPanelArn)/safetyrules",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_control_panel(control_panel_arn, control_panel_name)
    update_control_panel(control_panel_arn, control_panel_name, params::Dict{String,<:Any})

Updates a control panel. The only update you can make to a control panel is to change the
name of the control panel.

# Arguments
- `control_panel_arn`: The Amazon Resource Name (ARN) of the control panel.
- `control_panel_name`: The name of the control panel.

"""
function update_control_panel(
    ControlPanelArn, ControlPanelName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "PUT",
        "/controlpanel",
        Dict{String,Any}(
            "ControlPanelArn" => ControlPanelArn, "ControlPanelName" => ControlPanelName
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_control_panel(
    ControlPanelArn,
    ControlPanelName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "PUT",
        "/controlpanel",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ControlPanelArn" => ControlPanelArn,
                    "ControlPanelName" => ControlPanelName,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_routing_control(routing_control_arn, routing_control_name)
    update_routing_control(routing_control_arn, routing_control_name, params::Dict{String,<:Any})

Updates a routing control. You can only update the name of the routing control. To get or
update the routing control state, see the Recovery Cluster (data plane) API actions for
Amazon Route 53 Application Recovery Controller.

# Arguments
- `routing_control_arn`: The Amazon Resource Name (ARN) of the routing control.
- `routing_control_name`: The name of the routing control.

"""
function update_routing_control(
    RoutingControlArn, RoutingControlName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "PUT",
        "/routingcontrol",
        Dict{String,Any}(
            "RoutingControlArn" => RoutingControlArn,
            "RoutingControlName" => RoutingControlName,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_routing_control(
    RoutingControlArn,
    RoutingControlName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_control_config(
        "PUT",
        "/routingcontrol",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "RoutingControlArn" => RoutingControlArn,
                    "RoutingControlName" => RoutingControlName,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_safety_rule()
    update_safety_rule(params::Dict{String,<:Any})

Update a safety rule (an assertion rule or gating rule) for the routing controls in a
control panel. You can only update the name and the waiting period for a safety rule. To
make other updates, delete the safety rule and create a new safety rule.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AssertionRuleUpdate"`:
- `"GatingRuleUpdate"`:
"""
function update_safety_rule(; aws_config::AbstractAWSConfig=global_aws_config())
    return route53_recovery_control_config(
        "PUT", "/safetyrule"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function update_safety_rule(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_control_config(
        "PUT", "/safetyrule", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
