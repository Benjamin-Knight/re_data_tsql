An adapter for tsql support for dbt-re-data. Currently this requires a version of dbt-re-data that supports this adapter.
Inspiration and general ideas for how this adapater should work taken from [here](https://github.com/bachng2017/dbt-re-data-trino)

See [here](https://github.com/re-data/dbt-re-data) for more details about dbt-re-data

### Usage
Install necessary packages `dbt_utils`, `tsql_utils`,`re-data` and this package `re-data-tsql`

```packages.yml
packages:
  - package: dbt-labs/dbt_utils
    version: [">=1.0.0", "<1.2.0"]
  - package: dbt-msft/tsql_utils
    version: 1.2.0
  - git: "https://github.com/Benjamin-Knight/dbt-re-data"
  - git: "https://github.com/Benjamin-Knight/re_data_tsql.git"
```

configure the dispatch order in the project file `dbt_project.yml`
```dbt_project.yml
dispatch:
  ...
  # To handle current_timestamp_backcompat
  - macro_namespace: dbt
    search_order : ['re_data_tsql', 'dbt']
  - macro_namespace: dbt_utils
    search_order : ['tsql_utils', 'dbt_utils']
  - macro_namespace: re_data
    search_order : ['re_data_tsql', 're_data']
```

Notes: 
  - until `current_timestamp_in_utc` is implemented by dbt Core, a temporary macro is provided by this package. Hence, `re_data_tsql` need to be prior to `dbt_utils` in it's namespace
  - until `current_timestamp_backcompat` is implement by tsql_utils, `re_data_tsql` need to be prior `dbt` it it's namespace (for dbt_utils > 1.0.0)



install dbt packages by running
