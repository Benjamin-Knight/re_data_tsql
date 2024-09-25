{% macro sqlserver__re_data_schema_changes_last_data_points() %}
    select distinct top 2
        detected_time
    from {{ ref('re_data_columns_over_time') }}
    order by
        detected_time desc;
{% endmacro %}