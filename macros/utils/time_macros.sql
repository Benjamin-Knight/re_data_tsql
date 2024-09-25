{% macro sqlserver__anamaly_detection_time_window_start() %}
    DATEADD(DAY, -{{-var('re_data:anomaly_detection_look_back_days')-}}, {{ time_window_start() }})
{% endmacro %}

{% macro sqlserver__interval_length_sec(start_timestamp, end_timestamp) %}
   DATEDIFF(SECOND, {{ start_timestamp }}, {{ end_timestamp }})
{% endmacro %}

{% macro sqlserver__in_time_window(time_column) %}
    cast({{time_column}} as {{ timestamp_type() }}) >= {{ time_window_start() }} and
    cast({{time_column}} as {{ timestamp_type() }}) < {{ time_window_end() }}
{% endmacro %}

{% macro sqlserver__format_timestamp(column_name) %}
    FORMAT({{column_name}}, 'YYYY-MM-dd HH:mm:ss')
{% endmacro %}

{% macro sqlserver__in_date_window(target, start_date, end_date) %}
  {% if start_date is not none and end_date is not none %}
    cast({{target}} as date) between '{{start_date}}' and '{{end_date}}'
  {% elif start_date is none %}
    cast({{target}} as date) <= '{{end_date}}'
  {% elif end_date is none %}
    cast({{target}} as date) >= '{{start_date}}'
  {% endif %}
{% endmacro %}