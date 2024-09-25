{%- macro sqlserver__clean_blacklist(column_name, pattern_string, replacement) -%}
    replace( {{ column_name }}, '%{{ pattern_string }}%', '{{ replacement }}')
{%- endmacro -%}