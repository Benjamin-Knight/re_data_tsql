{% macro sqlserver__standard_deviation(column_name) %}
    stdev({{column_name}})
{% endmacro %}