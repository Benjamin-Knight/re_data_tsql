{% macro sqlserver__timestamp_type() %}
    datetime2 
{% endmacro %}

{% macro sqlserver__string_type() %}
    varchar(500)
{% endmacro %}

{% macro sqlserver__long_string_type() %}
    varchar(4000)
{% endmacro %}

{% macro sqlserver__numeric_type() %}
    bigint
{% endmacro %}

{% macro sqlserver__boolean_type() %}
    bit
{% endmacro %}