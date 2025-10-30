{% docs order_status_table %}

{# order_status_table is doc block name #}
{# A single markdown file can have multiple doc blocks with unique doc block name. #}
{# These doc blocks can referenced in YAML files. #}

The status column in orders table holds the current status of each order

| status         | description                                      |
|----------------|--------------------------------------------------|
| placed         | Order placed, not yet shipped                    |
| shipped        | Order has been shipped, not yet delivered        |
| completed      | Order delivered to customer                      |
| return_pending | Customer initiated return request and is pending |
| returned       | Order item has been returned                     |

{% enddocs %}