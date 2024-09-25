{% macro sqlserver__to_json_string_value_or_null(column) %}
    (
        case 
            when {{ column }} is null then 'null'
            else '"' + replace(cast({{ column }} as {{ string_type() }}), '"', {{ escape_seq_for_json('"') }}) + '"'
        end
    )
{% endmacro %}

{% macro sqlserver__to_single_json(columns) %}
    '{' +
    {%- for column in columns %}
        '"{{ column }}": ' +
        {{ to_json_string_value_or_null(column) }}
        {%- if not loop.last %} + ',' + {%- endif %}
    {%- endfor %}
    + '}'
{% endmacro %}
