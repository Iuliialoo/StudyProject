@echo off
setlocal EnableDelayedExpansion
set APP="bin\Editor_x64.exe"
if exist %APP% (
	start "" %APP% -video_app auto -video_refresh 0 -video_debug 0 -video_mode 3 -video_resizable 1 -video_fullscreen 0 -video_vsync 0 -sound_app auto -data_path ../data/ -extern_plugin FbxImporter,GLTFImporter,FbxExporter -console_command "config_autosave 1 && world_load \"Mao_Good_Transite\""
) else (
	set MESSAGE=%APP% not found"
	echo !MESSAGE!
)