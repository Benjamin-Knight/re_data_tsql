{% macro default__column_length(column_name) %}
    datalength({{column_name}})
{% endmacro %}