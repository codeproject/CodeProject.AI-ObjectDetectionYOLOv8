:: Installation script :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
::                           Object Detection (YOLOv8)
::
:: This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat 
::
:: For help with install scripts, notes on variables and methods available, tips,
:: and explanations, see /src/modules/install_script_help.md

@if "%1" NEQ "install" (
    echo This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat
    @pause
    @goto:eof
)

REM Backwards compatibility with Server 2.6.5
if "!utilsScript!" == "" if "!sdkScriptsDirPath!" NEQ "" set utilsScript=%sdkScriptsDirPath%\utils.bat

:: Download the YOLO models and custom models and store in /assets
REM call "%utilsScript%" GetFromServer "models/" "models-yolo8-pt.zip"                     "assets" "Downloading YOLO object detection models..."
REM call "%utilsScript%" GetFromServer "models/" "objectsegmentation-coco-yolov8-pt-m.zip" "assets" "Downloading YOLO segmentation models..."
REM call "%utilsScript%" GetFromServer "models/" "objectdetection-custom-yolov8-pt-m.zip" "custom-models" "Downloading Custom YOLO models..."

REM TODO: Check assets created and has files
REM set moduleInstallErrors=...
