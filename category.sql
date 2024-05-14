CREATE EXTERNAL DATA SOURCE datasource_parquet
WITH (    LOCATION   = 'https://youtubedatalakea.blob.core.windows.net/output',
          CREDENTIAL = SasToken
)

CREATE EXTERNAL TABLE dbo.category (
	[kind] nvarchar(4000),
	[etag] nvarchar(4000),
	[id] bigint,
	[channelId] nvarchar(4000),
	[title] nvarchar(4000),
	[assignable] bit
	)
	WITH (
	LOCATION = '/',
	DATA_SOURCE = [datasource_parquet],
	FILE_FORMAT = [parquetfile]
	)

select * from dbo.category
