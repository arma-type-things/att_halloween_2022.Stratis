{_x setMarkerAlpha 0} foreach ["tsk_01_area_marker"];
enableSentences false;   
enableRadio false;

0 =[] spawn {
    while {true} do {
        if (isServer) then { 
            { 
                _x addCuratorEditableObjects [allUnits,true]; 
                _x addCuratorEditableObjects [vehicles,true]; 
            } forEach allCurators;             
        }; 
        sleep 30;
    };
};