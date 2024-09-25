{% macro sqlserver__full_table_name(table_name, table_schema, table_catalog) %}
    '"' + {{table_catalog}} + '"' + '.' + '"' + {{table_schema}} + '"' +  '.' + '"' + {{table_name}} + '"'
{% endmacro %}

{% macro sqlserver__full_table_name_values(table_name, table_schema, table_catalog) %}
    [{{table_catalog}}].[{{table_schema}}].[{{table_name}}]
{% endmacro %}