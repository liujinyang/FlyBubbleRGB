%flyBubble1 upper left corner
serial_port_for_LED_Controller = 'COM6';
defaultDir = 'C:\Users\labadmin\Documents\MATLAB\flyBubbleRGB\';

%%settings of the camera
camera(1).ip = '127.0.0.1';
camera(1).port = 5010;
defaultJsonFile(1).name = [defaultDir,'bias_config.json'];
windowGeometry(1).height= 1400;
windowGeometry(1).width= 1400;
windowGeometry(1).x= 1050;
windowGeometry(1).y= 104;

%flyBubble GUI position
GUIPosition = [5 134 120 50];
%GUIPosition = [10 20 120 35];
serial_port_for_precon_sensor = 'COM5';

rigName = 'flyBubble1';

%delay time, in seconds, to open four dividers, inf means keep the dividier close during the
%experiment
dividerDelayT1 = 30;
dividerDelayT2 = 30;
dividerDelayT3 = inf;
dividerDelayT4 = inf;

% irBacklightPowerToIntensityRatio = [5.99,5.59,5.41,5.57];
% visibleBacklightPowerToIntensityRatio = [14.66,15.87,14.04,14.77];

%add max backlight intensity in mW/cm^2 per Katie's request
maxIrBacklightIntensity = 100;
maxVisibleBacklightIntensity = 100;

%Temp and Humidity update period (in secs)
THUpdateP = 10;
%overheat warning threshold (in Celsus degree)
tempThreshold = 30;

%Period(in secs) to query status from the controller during experiments
expPlotUpdateRate = 0.5;

% %frame Rate
frameRate = 30;
% %movie Format
movieFormat = 'ufmf';
% %region of interest
% ROI = [0 0 1024 1024];
% %trigger mode
triggerMode = 'external';

%%settings for the LED controller in mW/cm2
IrInt_DefaultVal = 70;  

%Directory settings
expDataDir = 'D:\Data';

%file settings
ledProtocolDir = [defaultDir,'ledProtocols\'];
expProtocolDir = [defaultDir,'ledProtocols\'];
rearProtocolDir = [defaultDir,'ledProtocols\'];
handleProtocolDir = [defaultDir,'ledProtocols\'];

% defaultMetaXmlFile = '';
defaultMetaXmlFile{1} = [defaultDir,'flyBubbleMetaTree1.xml'];
defaultMetaXmlFile{2} = [defaultDir,'flyBubbleMetaTree2.xml'];
defaultMetaXmlFile{3} = [defaultDir,'flyBubbleMetaTree3.xml'];
defaultMetaXmlFile{4} = [defaultDir,'flyBubbleMetaTree4.xml'];

defaultLedProtocol = [ledProtocolDir,'protocolRGBTemplate.xlsx'];
defaultExpProtocol = [ledProtocolDir,'protocolRGBTemplate.xlsx'];
defaultRearProtocol = [ledProtocolDir,'protocolRGBTemplate.xlsx'];
defaultHandleProtocol = [ledProtocolDir,'protocolRGBTemplate.xlsx'];

%defaultJsonFile
biasFile = [defaultDir,'bias_gui.bat'];

