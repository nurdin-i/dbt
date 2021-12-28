WITH dc_table AS (

    SELECT DISTINCT _airbyte_data->>'table_name' as table_name,
           _airbyte_data->>'table_data_source' as table_data_source,
           _airbyte_data->>'table_type' as table_type,
           _airbyte_data->>'table_owner' as table_owner,
           _airbyte_data->>'table_schema' as table_schema,
           _airbyte_data->>'table_description' as table_description
    FROM _airbyte_raw_dctables

)

SELECT *
FROM dc_table;