{%- macro sqlserver__quote_string(str) %}
    {%set escapedStr = str | replace("'", "''") %}
    '{{ escapedStr }}'
{% endmacro %}

{%- macro sqlserver__quote_new_line() %}'\n'{% endmacro %}