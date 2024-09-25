{% macro sqlserver__all_types_select() %}
    with types_table as (
        select
            cast (null as {{ string_type() }}) as string_type,
            cast (null as {{ long_string_type() }}) as long_string_type,
            cast (1 as {{ numeric_type() }}) as numeric_type,
            cast ('2000-01-10' as {{ timestamp_type() }}) as timestamp_type,
            cast (1 as {{ boolean_type() }}) as boolean_type
    )
{% endmacro %}