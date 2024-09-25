{% macro sqlserver__freshness_expression(time_filter) %}
   DATEDIFF(SECOND, cast(max({{ time_filter }}) as {{ timestamp_type() }}), cast({{ time_window_end() }} as {{ timestamp_type() }}))
{% endmacro %}