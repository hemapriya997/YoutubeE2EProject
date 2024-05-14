# YoutubeE2EProject
Youtube Data Analysis

## Overview
This project aims to securely manage, streamline, and perform analysis on the structured and semi-structured YouTube videos data based on the video categories and the trending metrics.

## Project Goals
1. Data Ingestion —  Build a mechanism to ingest data from different sources.
2. ETL System —  Get data in raw format, transforming this data into the proper format
3. Data lake — Get the data from multiple sources so we need centralized repo to store them
4. Scalability — As the size of our data increases, we need to make sure our system scales with it
5. Cloud — We can’t process vast amounts of data on our local computer so we need to use the cloud, in this case, we will use Azure services.
6. Reporting — Build a dashboard to represent the data analysed.

## Azure Services Used
1. Azure ADLS Gen2: Azure ADLS Gen2 is an storage service that provides manufacturing scalability, data availability, security, and performance.
2. Azure Data Factory : Azure Data Factory is a managed cloud service that's built for these complex hybrid extract-transform-load (ETL) and data integration projects. Here the ETL pipeline is built for converting the file formats , involving partitions according to the requirement.
3. Azure Synapse : Azure Synapse is an enterprise analytics service that accelerates time to insight across data warehouses and big data systems. 
4. Serverless Pools : The refined data is loaded into serverless pools and create a reporting table where we need the required data. This makes it easy for the visualization.
5. Power BI : Connected Microsoft Power BI to Azure Synapse, and used the queries to create interactive and insightful data visualizations.

![YoutubeDataAnalysis drawio (1)](
https://github.com/hemapriya997/YoutubeE2EProject/assets/168899923/3346c07e-871b-4eb7-9810-c565d3ae562c)

## Dataset Used
This Kaggle dataset contains statistics (CSV files) on daily popular YouTube videos over the course of many months. There are up to 200 trending videos published every day for many locations. The data for each region is in its own file. The video title, channel title, publication time, tags, views, likes and dislikes, description, and comment count are among the items included in the data. A category_id field, which differs by area, is also included in the JSON file linked to the region.

<a name="credits"></a>
## Credits

- This Project is inspired by the video of the [YouTube Channel "Darshil Parmer"](https://www.youtube.com/watch?v=yZKJFKu49Dk)

<a name="contact"></a>
