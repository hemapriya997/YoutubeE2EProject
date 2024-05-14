CREATE EXTERNAL DATA SOURCE data_video
WITH (    LOCATION   = 'https://youtubedatalakea.blob.core.windows.net/videooutput',
          CREDENTIAL = SasToken
)

CREATE EXTERNAL TABLE dbo.videos (
	[video_id] nvarchar(4000),
	[trending_date] nvarchar(4000),
	[videos_title] nvarchar(4000),
	[channel_title] nvarchar(4000),
	[category_id] nvarchar(4000),
	[publish_time] nvarchar(4000),
	[tags] nvarchar(4000),
	[views] nvarchar(4000),
	[likes] nvarchar(4000),
	[dislikes] nvarchar(4000),
	[comment_count] nvarchar(4000),
	[thumbnail_link] nvarchar(4000),
	[comments_disabled] nvarchar(4000),
	[ratings_disabled] nvarchar(4000),
	[video_error_or_removed] nvarchar(4000),
    [description] nvarchar(max),
	[region] varchar(30)
	)
	WITH (
	LOCATION = '/',
	DATA_SOURCE = [data_video],
	FILE_FORMAT = [parquetfile]
	)

select * from dbo.videos
