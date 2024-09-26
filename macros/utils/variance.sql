{% macro default__variance(column_name) %}
    var({{column_name}})
{% endmacro %}