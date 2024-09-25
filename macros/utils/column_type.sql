{% macro sqlserver__get_column_type(column) %}
    
    {% if column.data_type in [
        'varchar',
        'nvarchar',
        'varchar',
        'char',
        'text'
    ] %}
        {{ return('varchar') }}
    {% elif column.data_type in [
        'smallint',
        'int',
        'bigint',
        'decimal',
        'numeric',
        'real',
        'double',
        'enum',
    ] %}
        {{ return('integer') }}
    {% else %}
        {{ return('unknown') }}
    {% endif %}

{% endmacro %}