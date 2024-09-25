{% macro sqlserver__split_and_return_nth_value(column_name, delimiter, ordinal) -%}
    {%set escapedDelimiter = "'" + '"' + delimiter + '"' + "'" %}
    {{ dbt.split_part(re_data.clean_blacklist(column_name, ['"', '`'], ''), escapedDelimiter, ordinal) }}
{%- endmacro %}