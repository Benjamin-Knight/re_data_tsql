{% macro sqlserver__json_extract(string, string_path) %}

  JSON_VALUE({{string}}, {{ "'" ~ string_path ~ "'" }} )
 
{% endmacro %}