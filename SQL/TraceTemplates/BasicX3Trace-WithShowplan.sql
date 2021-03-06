/****************************************************/
/* Created by: SQL Server 2014 Profiler          */
/* Date: 06/28/2016  07:27:48 AM         */
/****************************************************/


-- Create a Queue
declare @rc int
declare @TraceID int
declare @maxfilesize bigint
set @maxfilesize = 5 

-- Please replace the text InsertFileNameHere, with an appropriate
-- filename prefixed by a path, e.g., c:\MyFolder\MyTrace. The .trc extension
-- will be appended to the filename automatically. If you are writing from
-- remote server to local drive, please use UNC path and make sure server has
-- write access to your network share

exec @rc = sp_trace_create @TraceID output, 0, N'InsertFileNameHere', @maxfilesize, NULL 
if (@rc != 0) goto error

-- Client side File and Table cannot be scripted

-- Set the events
declare @on bit
set @on = 1
exec sp_trace_setevent @TraceID, 16, 3, @on
exec sp_trace_setevent @TraceID, 16, 11, @on
exec sp_trace_setevent @TraceID, 16, 4, @on
exec sp_trace_setevent @TraceID, 16, 12, @on
exec sp_trace_setevent @TraceID, 16, 6, @on
exec sp_trace_setevent @TraceID, 16, 7, @on
exec sp_trace_setevent @TraceID, 16, 8, @on
exec sp_trace_setevent @TraceID, 16, 9, @on
exec sp_trace_setevent @TraceID, 16, 10, @on
exec sp_trace_setevent @TraceID, 16, 13, @on
exec sp_trace_setevent @TraceID, 16, 14, @on
exec sp_trace_setevent @TraceID, 16, 15, @on
exec sp_trace_setevent @TraceID, 16, 26, @on
exec sp_trace_setevent @TraceID, 16, 35, @on
exec sp_trace_setevent @TraceID, 16, 41, @on
exec sp_trace_setevent @TraceID, 16, 49, @on
exec sp_trace_setevent @TraceID, 16, 51, @on
exec sp_trace_setevent @TraceID, 16, 60, @on
exec sp_trace_setevent @TraceID, 16, 64, @on
exec sp_trace_setevent @TraceID, 193, 3, @on
exec sp_trace_setevent @TraceID, 193, 12, @on
exec sp_trace_setevent @TraceID, 193, 20, @on
exec sp_trace_setevent @TraceID, 193, 14, @on
exec sp_trace_setevent @TraceID, 193, 22, @on
exec sp_trace_setevent @TraceID, 193, 21, @on
exec sp_trace_setevent @TraceID, 193, 24, @on
exec sp_trace_setevent @TraceID, 193, 25, @on
exec sp_trace_setevent @TraceID, 193, 30, @on
exec sp_trace_setevent @TraceID, 193, 31, @on
exec sp_trace_setevent @TraceID, 193, 35, @on
exec sp_trace_setevent @TraceID, 193, 51, @on
exec sp_trace_setevent @TraceID, 193, 55, @on
exec sp_trace_setevent @TraceID, 193, 57, @on
exec sp_trace_setevent @TraceID, 193, 64, @on
exec sp_trace_setevent @TraceID, 212, 3, @on
exec sp_trace_setevent @TraceID, 212, 11, @on
exec sp_trace_setevent @TraceID, 212, 4, @on
exec sp_trace_setevent @TraceID, 212, 12, @on
exec sp_trace_setevent @TraceID, 212, 6, @on
exec sp_trace_setevent @TraceID, 212, 7, @on
exec sp_trace_setevent @TraceID, 212, 8, @on
exec sp_trace_setevent @TraceID, 212, 9, @on
exec sp_trace_setevent @TraceID, 212, 10, @on
exec sp_trace_setevent @TraceID, 212, 14, @on
exec sp_trace_setevent @TraceID, 212, 21, @on
exec sp_trace_setevent @TraceID, 212, 22, @on
exec sp_trace_setevent @TraceID, 212, 25, @on
exec sp_trace_setevent @TraceID, 212, 26, @on
exec sp_trace_setevent @TraceID, 212, 35, @on
exec sp_trace_setevent @TraceID, 212, 41, @on
exec sp_trace_setevent @TraceID, 212, 49, @on
exec sp_trace_setevent @TraceID, 212, 50, @on
exec sp_trace_setevent @TraceID, 212, 51, @on
exec sp_trace_setevent @TraceID, 212, 60, @on
exec sp_trace_setevent @TraceID, 212, 64, @on
exec sp_trace_setevent @TraceID, 137, 1, @on
exec sp_trace_setevent @TraceID, 137, 3, @on
exec sp_trace_setevent @TraceID, 137, 4, @on
exec sp_trace_setevent @TraceID, 137, 12, @on
exec sp_trace_setevent @TraceID, 137, 13, @on
exec sp_trace_setevent @TraceID, 137, 14, @on
exec sp_trace_setevent @TraceID, 137, 22, @on
exec sp_trace_setevent @TraceID, 137, 15, @on
exec sp_trace_setevent @TraceID, 137, 24, @on
exec sp_trace_setevent @TraceID, 137, 26, @on
exec sp_trace_setevent @TraceID, 137, 32, @on
exec sp_trace_setevent @TraceID, 137, 41, @on
exec sp_trace_setevent @TraceID, 137, 51, @on
exec sp_trace_setevent @TraceID, 137, 60, @on
exec sp_trace_setevent @TraceID, 137, 64, @on
exec sp_trace_setevent @TraceID, 214, 12, @on
exec sp_trace_setevent @TraceID, 214, 60, @on
exec sp_trace_setevent @TraceID, 214, 14, @on
exec sp_trace_setevent @TraceID, 214, 18, @on
exec sp_trace_setevent @TraceID, 214, 26, @on
exec sp_trace_setevent @TraceID, 214, 58, @on
exec sp_trace_setevent @TraceID, 214, 51, @on
exec sp_trace_setevent @TraceID, 214, 41, @on
exec sp_trace_setevent @TraceID, 214, 64, @on
exec sp_trace_setevent @TraceID, 214, 66, @on
exec sp_trace_setevent @TraceID, 213, 3, @on
exec sp_trace_setevent @TraceID, 213, 51, @on
exec sp_trace_setevent @TraceID, 213, 12, @on
exec sp_trace_setevent @TraceID, 213, 14, @on
exec sp_trace_setevent @TraceID, 213, 22, @on
exec sp_trace_setevent @TraceID, 213, 21, @on
exec sp_trace_setevent @TraceID, 213, 31, @on
exec sp_trace_setevent @TraceID, 213, 56, @on
exec sp_trace_setevent @TraceID, 213, 64, @on
exec sp_trace_setevent @TraceID, 22, 1, @on
exec sp_trace_setevent @TraceID, 22, 9, @on
exec sp_trace_setevent @TraceID, 22, 3, @on
exec sp_trace_setevent @TraceID, 22, 11, @on
exec sp_trace_setevent @TraceID, 22, 4, @on
exec sp_trace_setevent @TraceID, 22, 6, @on
exec sp_trace_setevent @TraceID, 22, 7, @on
exec sp_trace_setevent @TraceID, 22, 8, @on
exec sp_trace_setevent @TraceID, 22, 10, @on
exec sp_trace_setevent @TraceID, 22, 12, @on
exec sp_trace_setevent @TraceID, 22, 14, @on
exec sp_trace_setevent @TraceID, 22, 20, @on
exec sp_trace_setevent @TraceID, 22, 26, @on
exec sp_trace_setevent @TraceID, 22, 30, @on
exec sp_trace_setevent @TraceID, 22, 31, @on
exec sp_trace_setevent @TraceID, 22, 35, @on
exec sp_trace_setevent @TraceID, 22, 41, @on
exec sp_trace_setevent @TraceID, 22, 49, @on
exec sp_trace_setevent @TraceID, 22, 51, @on
exec sp_trace_setevent @TraceID, 22, 60, @on
exec sp_trace_setevent @TraceID, 22, 64, @on
exec sp_trace_setevent @TraceID, 21, 1, @on
exec sp_trace_setevent @TraceID, 21, 9, @on
exec sp_trace_setevent @TraceID, 21, 2, @on
exec sp_trace_setevent @TraceID, 21, 10, @on
exec sp_trace_setevent @TraceID, 21, 3, @on
exec sp_trace_setevent @TraceID, 21, 4, @on
exec sp_trace_setevent @TraceID, 21, 6, @on
exec sp_trace_setevent @TraceID, 21, 7, @on
exec sp_trace_setevent @TraceID, 21, 8, @on
exec sp_trace_setevent @TraceID, 21, 11, @on
exec sp_trace_setevent @TraceID, 21, 12, @on
exec sp_trace_setevent @TraceID, 21, 14, @on
exec sp_trace_setevent @TraceID, 21, 20, @on
exec sp_trace_setevent @TraceID, 21, 26, @on
exec sp_trace_setevent @TraceID, 21, 30, @on
exec sp_trace_setevent @TraceID, 21, 31, @on
exec sp_trace_setevent @TraceID, 21, 35, @on
exec sp_trace_setevent @TraceID, 21, 41, @on
exec sp_trace_setevent @TraceID, 21, 49, @on
exec sp_trace_setevent @TraceID, 21, 51, @on
exec sp_trace_setevent @TraceID, 21, 60, @on
exec sp_trace_setevent @TraceID, 21, 64, @on
exec sp_trace_setevent @TraceID, 33, 1, @on
exec sp_trace_setevent @TraceID, 33, 9, @on
exec sp_trace_setevent @TraceID, 33, 3, @on
exec sp_trace_setevent @TraceID, 33, 11, @on
exec sp_trace_setevent @TraceID, 33, 4, @on
exec sp_trace_setevent @TraceID, 33, 6, @on
exec sp_trace_setevent @TraceID, 33, 7, @on
exec sp_trace_setevent @TraceID, 33, 8, @on
exec sp_trace_setevent @TraceID, 33, 10, @on
exec sp_trace_setevent @TraceID, 33, 12, @on
exec sp_trace_setevent @TraceID, 33, 14, @on
exec sp_trace_setevent @TraceID, 33, 20, @on
exec sp_trace_setevent @TraceID, 33, 26, @on
exec sp_trace_setevent @TraceID, 33, 30, @on
exec sp_trace_setevent @TraceID, 33, 31, @on
exec sp_trace_setevent @TraceID, 33, 35, @on
exec sp_trace_setevent @TraceID, 33, 41, @on
exec sp_trace_setevent @TraceID, 33, 49, @on
exec sp_trace_setevent @TraceID, 33, 50, @on
exec sp_trace_setevent @TraceID, 33, 51, @on
exec sp_trace_setevent @TraceID, 33, 60, @on
exec sp_trace_setevent @TraceID, 33, 64, @on
exec sp_trace_setevent @TraceID, 33, 66, @on
exec sp_trace_setevent @TraceID, 127, 3, @on
exec sp_trace_setevent @TraceID, 127, 11, @on
exec sp_trace_setevent @TraceID, 127, 4, @on
exec sp_trace_setevent @TraceID, 127, 12, @on
exec sp_trace_setevent @TraceID, 127, 6, @on
exec sp_trace_setevent @TraceID, 127, 7, @on
exec sp_trace_setevent @TraceID, 127, 8, @on
exec sp_trace_setevent @TraceID, 127, 9, @on
exec sp_trace_setevent @TraceID, 127, 10, @on
exec sp_trace_setevent @TraceID, 127, 14, @on
exec sp_trace_setevent @TraceID, 127, 21, @on
exec sp_trace_setevent @TraceID, 127, 22, @on
exec sp_trace_setevent @TraceID, 127, 26, @on
exec sp_trace_setevent @TraceID, 127, 35, @on
exec sp_trace_setevent @TraceID, 127, 41, @on
exec sp_trace_setevent @TraceID, 127, 49, @on
exec sp_trace_setevent @TraceID, 127, 50, @on
exec sp_trace_setevent @TraceID, 127, 51, @on
exec sp_trace_setevent @TraceID, 127, 60, @on
exec sp_trace_setevent @TraceID, 127, 64, @on
exec sp_trace_setevent @TraceID, 127, 66, @on
exec sp_trace_setevent @TraceID, 67, 1, @on
exec sp_trace_setevent @TraceID, 67, 9, @on
exec sp_trace_setevent @TraceID, 67, 3, @on
exec sp_trace_setevent @TraceID, 67, 11, @on
exec sp_trace_setevent @TraceID, 67, 4, @on
exec sp_trace_setevent @TraceID, 67, 6, @on
exec sp_trace_setevent @TraceID, 67, 7, @on
exec sp_trace_setevent @TraceID, 67, 8, @on
exec sp_trace_setevent @TraceID, 67, 10, @on
exec sp_trace_setevent @TraceID, 67, 12, @on
exec sp_trace_setevent @TraceID, 67, 13, @on
exec sp_trace_setevent @TraceID, 67, 14, @on
exec sp_trace_setevent @TraceID, 67, 21, @on
exec sp_trace_setevent @TraceID, 67, 26, @on
exec sp_trace_setevent @TraceID, 67, 31, @on
exec sp_trace_setevent @TraceID, 67, 35, @on
exec sp_trace_setevent @TraceID, 67, 41, @on
exec sp_trace_setevent @TraceID, 67, 49, @on
exec sp_trace_setevent @TraceID, 67, 50, @on
exec sp_trace_setevent @TraceID, 67, 51, @on
exec sp_trace_setevent @TraceID, 67, 60, @on
exec sp_trace_setevent @TraceID, 67, 64, @on
exec sp_trace_setevent @TraceID, 67, 66, @on
exec sp_trace_setevent @TraceID, 55, 3, @on
exec sp_trace_setevent @TraceID, 55, 11, @on
exec sp_trace_setevent @TraceID, 55, 4, @on
exec sp_trace_setevent @TraceID, 55, 12, @on
exec sp_trace_setevent @TraceID, 55, 6, @on
exec sp_trace_setevent @TraceID, 55, 7, @on
exec sp_trace_setevent @TraceID, 55, 8, @on
exec sp_trace_setevent @TraceID, 55, 9, @on
exec sp_trace_setevent @TraceID, 55, 10, @on
exec sp_trace_setevent @TraceID, 55, 14, @on
exec sp_trace_setevent @TraceID, 55, 21, @on
exec sp_trace_setevent @TraceID, 55, 22, @on
exec sp_trace_setevent @TraceID, 55, 25, @on
exec sp_trace_setevent @TraceID, 55, 26, @on
exec sp_trace_setevent @TraceID, 55, 35, @on
exec sp_trace_setevent @TraceID, 55, 41, @on
exec sp_trace_setevent @TraceID, 55, 49, @on
exec sp_trace_setevent @TraceID, 55, 50, @on
exec sp_trace_setevent @TraceID, 55, 51, @on
exec sp_trace_setevent @TraceID, 55, 60, @on
exec sp_trace_setevent @TraceID, 55, 64, @on
exec sp_trace_setevent @TraceID, 55, 66, @on
exec sp_trace_setevent @TraceID, 79, 1, @on
exec sp_trace_setevent @TraceID, 79, 9, @on
exec sp_trace_setevent @TraceID, 79, 3, @on
exec sp_trace_setevent @TraceID, 79, 11, @on
exec sp_trace_setevent @TraceID, 79, 4, @on
exec sp_trace_setevent @TraceID, 79, 6, @on
exec sp_trace_setevent @TraceID, 79, 7, @on
exec sp_trace_setevent @TraceID, 79, 8, @on
exec sp_trace_setevent @TraceID, 79, 10, @on
exec sp_trace_setevent @TraceID, 79, 12, @on
exec sp_trace_setevent @TraceID, 79, 14, @on
exec sp_trace_setevent @TraceID, 79, 26, @on
exec sp_trace_setevent @TraceID, 79, 35, @on
exec sp_trace_setevent @TraceID, 79, 41, @on
exec sp_trace_setevent @TraceID, 79, 49, @on
exec sp_trace_setevent @TraceID, 79, 50, @on
exec sp_trace_setevent @TraceID, 79, 51, @on
exec sp_trace_setevent @TraceID, 79, 60, @on
exec sp_trace_setevent @TraceID, 79, 64, @on
exec sp_trace_setevent @TraceID, 79, 66, @on
exec sp_trace_setevent @TraceID, 80, 3, @on
exec sp_trace_setevent @TraceID, 80, 11, @on
exec sp_trace_setevent @TraceID, 80, 4, @on
exec sp_trace_setevent @TraceID, 80, 12, @on
exec sp_trace_setevent @TraceID, 80, 6, @on
exec sp_trace_setevent @TraceID, 80, 7, @on
exec sp_trace_setevent @TraceID, 80, 8, @on
exec sp_trace_setevent @TraceID, 80, 9, @on
exec sp_trace_setevent @TraceID, 80, 10, @on
exec sp_trace_setevent @TraceID, 80, 14, @on
exec sp_trace_setevent @TraceID, 80, 26, @on
exec sp_trace_setevent @TraceID, 80, 35, @on
exec sp_trace_setevent @TraceID, 80, 41, @on
exec sp_trace_setevent @TraceID, 80, 49, @on
exec sp_trace_setevent @TraceID, 80, 50, @on
exec sp_trace_setevent @TraceID, 80, 51, @on
exec sp_trace_setevent @TraceID, 80, 60, @on
exec sp_trace_setevent @TraceID, 80, 64, @on
exec sp_trace_setevent @TraceID, 80, 66, @on
exec sp_trace_setevent @TraceID, 69, 3, @on
exec sp_trace_setevent @TraceID, 69, 11, @on
exec sp_trace_setevent @TraceID, 69, 4, @on
exec sp_trace_setevent @TraceID, 69, 12, @on
exec sp_trace_setevent @TraceID, 69, 6, @on
exec sp_trace_setevent @TraceID, 69, 7, @on
exec sp_trace_setevent @TraceID, 69, 8, @on
exec sp_trace_setevent @TraceID, 69, 9, @on
exec sp_trace_setevent @TraceID, 69, 10, @on
exec sp_trace_setevent @TraceID, 69, 14, @on
exec sp_trace_setevent @TraceID, 69, 21, @on
exec sp_trace_setevent @TraceID, 69, 26, @on
exec sp_trace_setevent @TraceID, 69, 35, @on
exec sp_trace_setevent @TraceID, 69, 41, @on
exec sp_trace_setevent @TraceID, 69, 49, @on
exec sp_trace_setevent @TraceID, 69, 50, @on
exec sp_trace_setevent @TraceID, 69, 51, @on
exec sp_trace_setevent @TraceID, 69, 60, @on
exec sp_trace_setevent @TraceID, 69, 64, @on
exec sp_trace_setevent @TraceID, 69, 66, @on
exec sp_trace_setevent @TraceID, 162, 1, @on
exec sp_trace_setevent @TraceID, 162, 9, @on
exec sp_trace_setevent @TraceID, 162, 3, @on
exec sp_trace_setevent @TraceID, 162, 11, @on
exec sp_trace_setevent @TraceID, 162, 4, @on
exec sp_trace_setevent @TraceID, 162, 6, @on
exec sp_trace_setevent @TraceID, 162, 7, @on
exec sp_trace_setevent @TraceID, 162, 8, @on
exec sp_trace_setevent @TraceID, 162, 10, @on
exec sp_trace_setevent @TraceID, 162, 12, @on
exec sp_trace_setevent @TraceID, 162, 14, @on
exec sp_trace_setevent @TraceID, 162, 20, @on
exec sp_trace_setevent @TraceID, 162, 26, @on
exec sp_trace_setevent @TraceID, 162, 30, @on
exec sp_trace_setevent @TraceID, 162, 31, @on
exec sp_trace_setevent @TraceID, 162, 35, @on
exec sp_trace_setevent @TraceID, 162, 41, @on
exec sp_trace_setevent @TraceID, 162, 49, @on
exec sp_trace_setevent @TraceID, 162, 50, @on
exec sp_trace_setevent @TraceID, 162, 51, @on
exec sp_trace_setevent @TraceID, 162, 60, @on
exec sp_trace_setevent @TraceID, 162, 64, @on
exec sp_trace_setevent @TraceID, 162, 66, @on
exec sp_trace_setevent @TraceID, 122, 1, @on
exec sp_trace_setevent @TraceID, 122, 9, @on
exec sp_trace_setevent @TraceID, 122, 2, @on
exec sp_trace_setevent @TraceID, 122, 66, @on
exec sp_trace_setevent @TraceID, 122, 10, @on
exec sp_trace_setevent @TraceID, 122, 3, @on
exec sp_trace_setevent @TraceID, 122, 4, @on
exec sp_trace_setevent @TraceID, 122, 5, @on
exec sp_trace_setevent @TraceID, 122, 7, @on
exec sp_trace_setevent @TraceID, 122, 8, @on
exec sp_trace_setevent @TraceID, 122, 11, @on
exec sp_trace_setevent @TraceID, 122, 12, @on
exec sp_trace_setevent @TraceID, 122, 14, @on
exec sp_trace_setevent @TraceID, 122, 22, @on
exec sp_trace_setevent @TraceID, 122, 25, @on
exec sp_trace_setevent @TraceID, 122, 26, @on
exec sp_trace_setevent @TraceID, 122, 28, @on
exec sp_trace_setevent @TraceID, 122, 29, @on
exec sp_trace_setevent @TraceID, 122, 34, @on
exec sp_trace_setevent @TraceID, 122, 35, @on
exec sp_trace_setevent @TraceID, 122, 41, @on
exec sp_trace_setevent @TraceID, 122, 49, @on
exec sp_trace_setevent @TraceID, 122, 50, @on
exec sp_trace_setevent @TraceID, 122, 51, @on
exec sp_trace_setevent @TraceID, 122, 60, @on
exec sp_trace_setevent @TraceID, 122, 64, @on
exec sp_trace_setevent @TraceID, 14, 1, @on
exec sp_trace_setevent @TraceID, 14, 9, @on
exec sp_trace_setevent @TraceID, 14, 10, @on
exec sp_trace_setevent @TraceID, 14, 11, @on
exec sp_trace_setevent @TraceID, 14, 6, @on
exec sp_trace_setevent @TraceID, 14, 12, @on
exec sp_trace_setevent @TraceID, 14, 14, @on
exec sp_trace_setevent @TraceID, 15, 11, @on
exec sp_trace_setevent @TraceID, 15, 6, @on
exec sp_trace_setevent @TraceID, 15, 9, @on
exec sp_trace_setevent @TraceID, 15, 10, @on
exec sp_trace_setevent @TraceID, 15, 12, @on
exec sp_trace_setevent @TraceID, 15, 13, @on
exec sp_trace_setevent @TraceID, 15, 14, @on
exec sp_trace_setevent @TraceID, 15, 15, @on
exec sp_trace_setevent @TraceID, 15, 16, @on
exec sp_trace_setevent @TraceID, 15, 17, @on
exec sp_trace_setevent @TraceID, 15, 18, @on
exec sp_trace_setevent @TraceID, 17, 1, @on
exec sp_trace_setevent @TraceID, 17, 9, @on
exec sp_trace_setevent @TraceID, 17, 10, @on
exec sp_trace_setevent @TraceID, 17, 11, @on
exec sp_trace_setevent @TraceID, 17, 6, @on
exec sp_trace_setevent @TraceID, 17, 12, @on
exec sp_trace_setevent @TraceID, 17, 14, @on
exec sp_trace_setevent @TraceID, 10, 1, @on
exec sp_trace_setevent @TraceID, 10, 9, @on
exec sp_trace_setevent @TraceID, 10, 2, @on
exec sp_trace_setevent @TraceID, 10, 66, @on
exec sp_trace_setevent @TraceID, 10, 10, @on
exec sp_trace_setevent @TraceID, 10, 3, @on
exec sp_trace_setevent @TraceID, 10, 4, @on
exec sp_trace_setevent @TraceID, 10, 6, @on
exec sp_trace_setevent @TraceID, 10, 7, @on
exec sp_trace_setevent @TraceID, 10, 8, @on
exec sp_trace_setevent @TraceID, 10, 11, @on
exec sp_trace_setevent @TraceID, 10, 12, @on
exec sp_trace_setevent @TraceID, 10, 13, @on
exec sp_trace_setevent @TraceID, 10, 14, @on
exec sp_trace_setevent @TraceID, 10, 15, @on
exec sp_trace_setevent @TraceID, 10, 16, @on
exec sp_trace_setevent @TraceID, 10, 17, @on
exec sp_trace_setevent @TraceID, 10, 18, @on
exec sp_trace_setevent @TraceID, 10, 25, @on
exec sp_trace_setevent @TraceID, 10, 26, @on
exec sp_trace_setevent @TraceID, 10, 31, @on
exec sp_trace_setevent @TraceID, 10, 34, @on
exec sp_trace_setevent @TraceID, 10, 35, @on
exec sp_trace_setevent @TraceID, 10, 41, @on
exec sp_trace_setevent @TraceID, 10, 48, @on
exec sp_trace_setevent @TraceID, 10, 49, @on
exec sp_trace_setevent @TraceID, 10, 50, @on
exec sp_trace_setevent @TraceID, 10, 51, @on
exec sp_trace_setevent @TraceID, 10, 60, @on
exec sp_trace_setevent @TraceID, 10, 64, @on
exec sp_trace_setevent @TraceID, 45, 1, @on
exec sp_trace_setevent @TraceID, 45, 9, @on
exec sp_trace_setevent @TraceID, 45, 3, @on
exec sp_trace_setevent @TraceID, 45, 4, @on
exec sp_trace_setevent @TraceID, 45, 5, @on
exec sp_trace_setevent @TraceID, 45, 6, @on
exec sp_trace_setevent @TraceID, 45, 7, @on
exec sp_trace_setevent @TraceID, 45, 8, @on
exec sp_trace_setevent @TraceID, 45, 10, @on
exec sp_trace_setevent @TraceID, 45, 11, @on
exec sp_trace_setevent @TraceID, 45, 12, @on
exec sp_trace_setevent @TraceID, 45, 13, @on
exec sp_trace_setevent @TraceID, 45, 14, @on
exec sp_trace_setevent @TraceID, 45, 15, @on
exec sp_trace_setevent @TraceID, 45, 16, @on
exec sp_trace_setevent @TraceID, 45, 17, @on
exec sp_trace_setevent @TraceID, 45, 18, @on
exec sp_trace_setevent @TraceID, 45, 22, @on
exec sp_trace_setevent @TraceID, 45, 25, @on
exec sp_trace_setevent @TraceID, 45, 26, @on
exec sp_trace_setevent @TraceID, 45, 28, @on
exec sp_trace_setevent @TraceID, 45, 29, @on
exec sp_trace_setevent @TraceID, 45, 34, @on
exec sp_trace_setevent @TraceID, 45, 35, @on
exec sp_trace_setevent @TraceID, 45, 41, @on
exec sp_trace_setevent @TraceID, 45, 48, @on
exec sp_trace_setevent @TraceID, 45, 49, @on
exec sp_trace_setevent @TraceID, 45, 50, @on
exec sp_trace_setevent @TraceID, 45, 51, @on
exec sp_trace_setevent @TraceID, 45, 55, @on
exec sp_trace_setevent @TraceID, 45, 60, @on
exec sp_trace_setevent @TraceID, 45, 61, @on
exec sp_trace_setevent @TraceID, 45, 62, @on
exec sp_trace_setevent @TraceID, 45, 64, @on
exec sp_trace_setevent @TraceID, 45, 66, @on


-- Set the Filters
declare @intfilter int
declare @bigintfilter bigint

set @intfilter = 4300 --ClientProcessID
exec sp_trace_setfilter @TraceID, 9, 0, 0, @intfilter

exec sp_trace_setfilter @TraceID, 10, 0, 7, N'SQL Server Profiler - baf3ee80-92dd-4941-b294-3d371b3cb1b6'
-- Set the trace status to start
exec sp_trace_setstatus @TraceID, 1

-- display trace id for future references
select TraceID=@TraceID
goto finish

error: 
select ErrorCode=@rc

finish: 
go
