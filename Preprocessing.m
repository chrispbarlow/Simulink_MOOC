% preprocessing
MWS = get_param('MSD2','ModelWorkSpace');
MWS.assignin('m',1);
MWS.assignin('D',2);
MWS.assignin('C',3);

% processing
sim('MSD2')

% post processing
plot(Position.time,Position.signals.values);
