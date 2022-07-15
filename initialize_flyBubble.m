function hComm = initialize_flyBubble()

flyBubble_user_setting;

% %initialize LED controller
fprintf('Opening LED controller...\n');
LEDCtrl = LEDController(serial_port_for_LED_Controller);
hComm.LEDCtrl = LEDCtrl;
hComm.LEDCtrl.reset();
%hComm.LEDCtrl.synCamera(frameRate);

% hFlyBubbleCtrl = ModularClient(serial_port_for_flyBubble_controller);
% hComm.LEDCtrl = hFlyBubbleCtrl;
% hComm.LEDCtrl.open();
% hComm.LEDCtrl.getDeviceId();
% 
% %add calibration parameters to the controller
% hComm.LEDCtrl.setPropertiesToDefaults({'ALL'});
% hComm.LEDCtrl.irBacklightPowerToIntensityRatio('setValue',irBacklightPowerToIntensityRatio);
% hComm.LEDCtrl.visibleBacklightPowerToIntensityRatio('setValue',visibleBacklightPowerToIntensityRatio);

%Run the camera server program bia
cmdString = ['cmd /C "',biasFile, '" && exit &'];
system(cmdString);

for i = 1:1
    try
        %initialize the camera
        flea3{i} = BiasControl(camera(i).ip,camera(i).port);
        %flea3.initializeCamera(frameRate, movieFormat, ROI, triggerMode);
        flea3{i}.connect();
        flea3{i}.loadConfiguration(defaultJsonFile(i).name);
        
        flea3{i}.disableLogging();
        flea3{i}.setWindowGeometry(windowGeometry(i));
        hComm.flea3{i} = flea3{i};
        hComm.flea3IsActive(i) = true;
        
    catch
        hComm.flea3{i} = 0;
        hComm.flea3IsActive(i) = false;
    end
end
%     
% % %initialize precon sensor
THSensor = PreconSensor(serial_port_for_precon_sensor);
[success, errMsg] = THSensor.open();
if success
    hComm.THSensor = THSensor;
else
    hComm.THSensor = 0;    
    display(errMsg);
end