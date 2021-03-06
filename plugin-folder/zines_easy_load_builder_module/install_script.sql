

-- FOLDER MODULE

-- Get the module set id from one of the incoming folders
declare @modulesetid int;
set @modulesetid = 13;

-- Insert into the beginning
if ( ( select count(*) from SobekCM_Builder_Module where Class='zines_easy_load_builder_module.CustomNonBibFolders' and ModuleSetID=13 ) = 0 )
begin
	insert into SobekCM_Builder_Module ( ModuleSetID, ModuleDesc, [Assembly], Class, [Enabled], [Order] )
	values ( @modulesetid, 'Handle non-Bib type incoming packages with no metadata for the zines collection', 'zines_easy_load_builder_module.dll', 'zines_easy_load_builder_module.ZinesNonBibFolders', 1, 0 );
end
GO

