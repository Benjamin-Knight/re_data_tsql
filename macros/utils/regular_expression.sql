{% macro sqlserver__regex_match_expression(column_name, pattern) %}
    ({{column_name}} LIKE '%{{pattern}}%')
{% endmacro %}