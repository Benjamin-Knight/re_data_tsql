{% macro sqlserver__bool_to_string(column) %}
    (
    case when {{ column }} = cast('true' AS {{ boolean_type() }}) then 'true'
         when {{ column }} = cast('false' AS {{ boolean_type() }}) then 'false'
    end
    ) as {{ column }}
{% endmacro %}