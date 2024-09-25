{% macro sqlserver__clean_additional_whitespaces(column_name) %}
    trim(replace( {{ column_name }}, '  ', ' '))
{% endmacro %}