{% macro sqlserver__current_timestamp_in_utc() %}
  GETUTCDATE()
{% endmacro %}

{% macro sqlserver__current_timestamp_backcompat() %}
  GETDATE()
{% endmacro %}