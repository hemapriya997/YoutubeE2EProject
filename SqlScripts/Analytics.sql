CREATE EXTERNAL DATA SOURCE 
WITH (    LOCATION   = 'https://youtubedatalakea.blob.core.windows.net/final',
          CREDENTIAL = SasToken
)

CREATE EXTERNAL TABLE dbo.Analytics
    WITH (
            LOCATION = '/final/analysis.parquet',
            DATA_SOURCE = finaldata,
            FILE_FORMAT = parquetfile
            ) AS
select * from dbo.category a
inner join dbo.videos b on a.id = b.category_id
