# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: budgets
using AWS.Compat
using AWS.UUIDs

"""
    CreateBudget()

Creates a budget and, if included, notifications and subscribers.   Only one of BudgetLimit or PlannedBudgetLimits can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  

# Required Parameters
- `AccountId`: The accountId that is associated with the budget.
- `Budget`: The budget object that you want to create.

# Optional Parameters
- `NotificationsWithSubscribers`: A notification that you want to associate with a budget. A budget can have up to five notifications, and each notification can have one SNS subscriber and up to 10 email subscribers. If you include notifications and subscribers in your CreateBudget call, AWS creates the notifications and subscribers for you.
"""
create_budget(AccountId, Budget; aws_config::AWSConfig=global_aws_config()) = budgets("CreateBudget", Dict{String, Any}("AccountId"=>AccountId, "Budget"=>Budget); aws_config=aws_config)
create_budget(AccountId, Budget, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("CreateBudget", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "Budget"=>Budget), args)); aws_config=aws_config)

"""
    CreateBudgetAction()

 Creates a budget action. 

# Required Parameters
- `AccountId`: 
- `ActionThreshold`: 
- `ActionType`:  The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. 
- `ApprovalModel`:  This specifies if the action needs manual or automatic approval. 
- `BudgetName`: 
- `Definition`: 
- `ExecutionRoleArn`:  The role passed for action execution and reversion. Roles and actions must be in the same account. 
- `NotificationType`: 
- `Subscribers`: 

"""
create_budget_action(AccountId, ActionThreshold, ActionType, ApprovalModel, BudgetName, Definition, ExecutionRoleArn, NotificationType, Subscribers; aws_config::AWSConfig=global_aws_config()) = budgets("CreateBudgetAction", Dict{String, Any}("AccountId"=>AccountId, "ActionThreshold"=>ActionThreshold, "ActionType"=>ActionType, "ApprovalModel"=>ApprovalModel, "BudgetName"=>BudgetName, "Definition"=>Definition, "ExecutionRoleArn"=>ExecutionRoleArn, "NotificationType"=>NotificationType, "Subscribers"=>Subscribers); aws_config=aws_config)
create_budget_action(AccountId, ActionThreshold, ActionType, ApprovalModel, BudgetName, Definition, ExecutionRoleArn, NotificationType, Subscribers, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("CreateBudgetAction", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "ActionThreshold"=>ActionThreshold, "ActionType"=>ActionType, "ApprovalModel"=>ApprovalModel, "BudgetName"=>BudgetName, "Definition"=>Definition, "ExecutionRoleArn"=>ExecutionRoleArn, "NotificationType"=>NotificationType, "Subscribers"=>Subscribers), args)); aws_config=aws_config)

"""
    CreateNotification()

Creates a notification. You must create the budget before you create the associated notification.

# Required Parameters
- `AccountId`: The accountId that is associated with the budget that you want to create a notification for.
- `BudgetName`: The name of the budget that you want AWS to notify you about. Budget names must be unique within an account.
- `Notification`: The notification that you want to create.
- `Subscribers`: A list of subscribers that you want to associate with the notification. Each notification can have one SNS subscriber and up to 10 email subscribers.

"""
create_notification(AccountId, BudgetName, Notification, Subscribers; aws_config::AWSConfig=global_aws_config()) = budgets("CreateNotification", Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "Notification"=>Notification, "Subscribers"=>Subscribers); aws_config=aws_config)
create_notification(AccountId, BudgetName, Notification, Subscribers, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("CreateNotification", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "Notification"=>Notification, "Subscribers"=>Subscribers), args)); aws_config=aws_config)

"""
    CreateSubscriber()

Creates a subscriber. You must create the associated budget and notification before you create the subscriber.

# Required Parameters
- `AccountId`: The accountId that is associated with the budget that you want to create a subscriber for.
- `BudgetName`: The name of the budget that you want to subscribe to. Budget names must be unique within an account.
- `Notification`: The notification that you want to create a subscriber for.
- `Subscriber`: The subscriber that you want to associate with a budget notification.

"""
create_subscriber(AccountId, BudgetName, Notification, Subscriber; aws_config::AWSConfig=global_aws_config()) = budgets("CreateSubscriber", Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "Notification"=>Notification, "Subscriber"=>Subscriber); aws_config=aws_config)
create_subscriber(AccountId, BudgetName, Notification, Subscriber, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("CreateSubscriber", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "Notification"=>Notification, "Subscriber"=>Subscriber), args)); aws_config=aws_config)

"""
    DeleteBudget()

Deletes a budget. You can delete your budget at any time.  Deleting a budget also deletes the notifications and subscribers that are associated with that budget. 

# Required Parameters
- `AccountId`: The accountId that is associated with the budget that you want to delete.
- `BudgetName`: The name of the budget that you want to delete.

"""
delete_budget(AccountId, BudgetName; aws_config::AWSConfig=global_aws_config()) = budgets("DeleteBudget", Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName); aws_config=aws_config)
delete_budget(AccountId, BudgetName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("DeleteBudget", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName), args)); aws_config=aws_config)

"""
    DeleteBudgetAction()

 Deletes a budget action. 

# Required Parameters
- `AccountId`: 
- `ActionId`:  A system-generated universally unique identifier (UUID) for the action. 
- `BudgetName`: 

"""
delete_budget_action(AccountId, ActionId, BudgetName; aws_config::AWSConfig=global_aws_config()) = budgets("DeleteBudgetAction", Dict{String, Any}("AccountId"=>AccountId, "ActionId"=>ActionId, "BudgetName"=>BudgetName); aws_config=aws_config)
delete_budget_action(AccountId, ActionId, BudgetName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("DeleteBudgetAction", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "ActionId"=>ActionId, "BudgetName"=>BudgetName), args)); aws_config=aws_config)

"""
    DeleteNotification()

Deletes a notification.  Deleting a notification also deletes the subscribers that are associated with the notification. 

# Required Parameters
- `AccountId`: The accountId that is associated with the budget whose notification you want to delete.
- `BudgetName`: The name of the budget whose notification you want to delete.
- `Notification`: The notification that you want to delete.

"""
delete_notification(AccountId, BudgetName, Notification; aws_config::AWSConfig=global_aws_config()) = budgets("DeleteNotification", Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "Notification"=>Notification); aws_config=aws_config)
delete_notification(AccountId, BudgetName, Notification, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("DeleteNotification", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "Notification"=>Notification), args)); aws_config=aws_config)

"""
    DeleteSubscriber()

Deletes a subscriber.  Deleting the last subscriber to a notification also deletes the notification. 

# Required Parameters
- `AccountId`: The accountId that is associated with the budget whose subscriber you want to delete.
- `BudgetName`: The name of the budget whose subscriber you want to delete.
- `Notification`: The notification whose subscriber you want to delete.
- `Subscriber`: The subscriber that you want to delete.

"""
delete_subscriber(AccountId, BudgetName, Notification, Subscriber; aws_config::AWSConfig=global_aws_config()) = budgets("DeleteSubscriber", Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "Notification"=>Notification, "Subscriber"=>Subscriber); aws_config=aws_config)
delete_subscriber(AccountId, BudgetName, Notification, Subscriber, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("DeleteSubscriber", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "Notification"=>Notification, "Subscriber"=>Subscriber), args)); aws_config=aws_config)

"""
    DescribeBudget()

Describes a budget.  The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  

# Required Parameters
- `AccountId`: The accountId that is associated with the budget that you want a description of.
- `BudgetName`: The name of the budget that you want a description of.

"""
describe_budget(AccountId, BudgetName; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudget", Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName); aws_config=aws_config)
describe_budget(AccountId, BudgetName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudget", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName), args)); aws_config=aws_config)

"""
    DescribeBudgetAction()

 Describes a budget action detail. 

# Required Parameters
- `AccountId`: 
- `ActionId`:  A system-generated universally unique identifier (UUID) for the action. 
- `BudgetName`: 

"""
describe_budget_action(AccountId, ActionId, BudgetName; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudgetAction", Dict{String, Any}("AccountId"=>AccountId, "ActionId"=>ActionId, "BudgetName"=>BudgetName); aws_config=aws_config)
describe_budget_action(AccountId, ActionId, BudgetName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudgetAction", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "ActionId"=>ActionId, "BudgetName"=>BudgetName), args)); aws_config=aws_config)

"""
    DescribeBudgetActionHistories()

 Describes a budget action history detail. 

# Required Parameters
- `AccountId`: 
- `ActionId`:  A system-generated universally unique identifier (UUID) for the action. 
- `BudgetName`: 

# Optional Parameters
- `MaxResults`: 
- `NextToken`: 
- `TimePeriod`: 
"""
describe_budget_action_histories(AccountId, ActionId, BudgetName; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudgetActionHistories", Dict{String, Any}("AccountId"=>AccountId, "ActionId"=>ActionId, "BudgetName"=>BudgetName); aws_config=aws_config)
describe_budget_action_histories(AccountId, ActionId, BudgetName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudgetActionHistories", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "ActionId"=>ActionId, "BudgetName"=>BudgetName), args)); aws_config=aws_config)

"""
    DescribeBudgetActionsForAccount()

 Describes all of the budget actions for an account. 

# Required Parameters
- `AccountId`: 

# Optional Parameters
- `MaxResults`: 
- `NextToken`: 
"""
describe_budget_actions_for_account(AccountId; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudgetActionsForAccount", Dict{String, Any}("AccountId"=>AccountId); aws_config=aws_config)
describe_budget_actions_for_account(AccountId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudgetActionsForAccount", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId), args)); aws_config=aws_config)

"""
    DescribeBudgetActionsForBudget()

 Describes all of the budget actions for a budget. 

# Required Parameters
- `AccountId`: 
- `BudgetName`: 

# Optional Parameters
- `MaxResults`: 
- `NextToken`: 
"""
describe_budget_actions_for_budget(AccountId, BudgetName; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudgetActionsForBudget", Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName); aws_config=aws_config)
describe_budget_actions_for_budget(AccountId, BudgetName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudgetActionsForBudget", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName), args)); aws_config=aws_config)

"""
    DescribeBudgetPerformanceHistory()

Describes the history for DAILY, MONTHLY, and QUARTERLY budgets. Budget history isn't available for ANNUAL budgets.

# Required Parameters
- `AccountId`: 
- `BudgetName`: 

# Optional Parameters
- `MaxResults`: 
- `NextToken`: 
- `TimePeriod`: Retrieves how often the budget went into an ALARM state for the specified time period.
"""
describe_budget_performance_history(AccountId, BudgetName; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudgetPerformanceHistory", Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName); aws_config=aws_config)
describe_budget_performance_history(AccountId, BudgetName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudgetPerformanceHistory", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName), args)); aws_config=aws_config)

"""
    DescribeBudgets()

Lists the budgets that are associated with an account.  The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  

# Required Parameters
- `AccountId`: The accountId that is associated with the budgets that you want descriptions of.

# Optional Parameters
- `MaxResults`: An optional integer that represents how many entries a paginated response contains. The maximum is 100.
- `NextToken`: The pagination token that you include in your request to indicate the next set of results that you want to retrieve.
"""
describe_budgets(AccountId; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudgets", Dict{String, Any}("AccountId"=>AccountId); aws_config=aws_config)
describe_budgets(AccountId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeBudgets", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId), args)); aws_config=aws_config)

"""
    DescribeNotificationsForBudget()

Lists the notifications that are associated with a budget.

# Required Parameters
- `AccountId`: The accountId that is associated with the budget whose notifications you want descriptions of.
- `BudgetName`: The name of the budget whose notifications you want descriptions of.

# Optional Parameters
- `MaxResults`: An optional integer that represents how many entries a paginated response contains. The maximum is 100.
- `NextToken`: The pagination token that you include in your request to indicate the next set of results that you want to retrieve.
"""
describe_notifications_for_budget(AccountId, BudgetName; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeNotificationsForBudget", Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName); aws_config=aws_config)
describe_notifications_for_budget(AccountId, BudgetName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeNotificationsForBudget", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName), args)); aws_config=aws_config)

"""
    DescribeSubscribersForNotification()

Lists the subscribers that are associated with a notification.

# Required Parameters
- `AccountId`: The accountId that is associated with the budget whose subscribers you want descriptions of.
- `BudgetName`: The name of the budget whose subscribers you want descriptions of.
- `Notification`: The notification whose subscribers you want to list.

# Optional Parameters
- `MaxResults`: An optional integer that represents how many entries a paginated response contains. The maximum is 100.
- `NextToken`: The pagination token that you include in your request to indicate the next set of results that you want to retrieve.
"""
describe_subscribers_for_notification(AccountId, BudgetName, Notification; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeSubscribersForNotification", Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "Notification"=>Notification); aws_config=aws_config)
describe_subscribers_for_notification(AccountId, BudgetName, Notification, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("DescribeSubscribersForNotification", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "Notification"=>Notification), args)); aws_config=aws_config)

"""
    ExecuteBudgetAction()

 Executes a budget action. 

# Required Parameters
- `AccountId`: 
- `ActionId`:  A system-generated universally unique identifier (UUID) for the action. 
- `BudgetName`: 
- `ExecutionType`:  The type of execution. 

"""
execute_budget_action(AccountId, ActionId, BudgetName, ExecutionType; aws_config::AWSConfig=global_aws_config()) = budgets("ExecuteBudgetAction", Dict{String, Any}("AccountId"=>AccountId, "ActionId"=>ActionId, "BudgetName"=>BudgetName, "ExecutionType"=>ExecutionType); aws_config=aws_config)
execute_budget_action(AccountId, ActionId, BudgetName, ExecutionType, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("ExecuteBudgetAction", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "ActionId"=>ActionId, "BudgetName"=>BudgetName, "ExecutionType"=>ExecutionType), args)); aws_config=aws_config)

"""
    UpdateBudget()

Updates a budget. You can change every part of a budget except for the budgetName and the calculatedSpend. When you modify a budget, the calculatedSpend drops to zero until AWS has new usage data to use for forecasting.  Only one of BudgetLimit or PlannedBudgetLimits can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  

# Required Parameters
- `AccountId`: The accountId that is associated with the budget that you want to update.
- `NewBudget`: The budget that you want to update your budget to.

"""
update_budget(AccountId, NewBudget; aws_config::AWSConfig=global_aws_config()) = budgets("UpdateBudget", Dict{String, Any}("AccountId"=>AccountId, "NewBudget"=>NewBudget); aws_config=aws_config)
update_budget(AccountId, NewBudget, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("UpdateBudget", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "NewBudget"=>NewBudget), args)); aws_config=aws_config)

"""
    UpdateBudgetAction()

 Updates a budget action. 

# Required Parameters
- `AccountId`: 
- `ActionId`:  A system-generated universally unique identifier (UUID) for the action. 
- `BudgetName`: 

# Optional Parameters
- `ActionThreshold`: 
- `ApprovalModel`:  This specifies if the action needs manual or automatic approval. 
- `Definition`: 
- `ExecutionRoleArn`:  The role passed for action execution and reversion. Roles and actions must be in the same account. 
- `NotificationType`: 
- `Subscribers`: 
"""
update_budget_action(AccountId, ActionId, BudgetName; aws_config::AWSConfig=global_aws_config()) = budgets("UpdateBudgetAction", Dict{String, Any}("AccountId"=>AccountId, "ActionId"=>ActionId, "BudgetName"=>BudgetName); aws_config=aws_config)
update_budget_action(AccountId, ActionId, BudgetName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("UpdateBudgetAction", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "ActionId"=>ActionId, "BudgetName"=>BudgetName), args)); aws_config=aws_config)

"""
    UpdateNotification()

Updates a notification.

# Required Parameters
- `AccountId`: The accountId that is associated with the budget whose notification you want to update.
- `BudgetName`: The name of the budget whose notification you want to update.
- `NewNotification`: The updated notification to be associated with a budget.
- `OldNotification`: The previous notification that is associated with a budget.

"""
update_notification(AccountId, BudgetName, NewNotification, OldNotification; aws_config::AWSConfig=global_aws_config()) = budgets("UpdateNotification", Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "NewNotification"=>NewNotification, "OldNotification"=>OldNotification); aws_config=aws_config)
update_notification(AccountId, BudgetName, NewNotification, OldNotification, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("UpdateNotification", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "NewNotification"=>NewNotification, "OldNotification"=>OldNotification), args)); aws_config=aws_config)

"""
    UpdateSubscriber()

Updates a subscriber.

# Required Parameters
- `AccountId`: The accountId that is associated with the budget whose subscriber you want to update.
- `BudgetName`: The name of the budget whose subscriber you want to update.
- `NewSubscriber`: The updated subscriber that is associated with a budget notification.
- `Notification`: The notification whose subscriber you want to update.
- `OldSubscriber`: The previous subscriber that is associated with a budget notification.

"""
update_subscriber(AccountId, BudgetName, NewSubscriber, Notification, OldSubscriber; aws_config::AWSConfig=global_aws_config()) = budgets("UpdateSubscriber", Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "NewSubscriber"=>NewSubscriber, "Notification"=>Notification, "OldSubscriber"=>OldSubscriber); aws_config=aws_config)
update_subscriber(AccountId, BudgetName, NewSubscriber, Notification, OldSubscriber, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = budgets("UpdateSubscriber", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "BudgetName"=>BudgetName, "NewSubscriber"=>NewSubscriber, "Notification"=>Notification, "OldSubscriber"=>OldSubscriber), args)); aws_config=aws_config)
