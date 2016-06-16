clear Legende
clc
i=0;
hold off
MWS = get_param('MSD','ModelWorkSpace');
map=colormap(parula(8));% see 'help colormap' for details
for D=1:1:2
    for C=1:1:2;
        for m=1:1:2;
            MWS.assignin('m',m);
            MWS.assignin('D',D);
            MWS.assignin('C',C);
            sim('MSD')               
            i=i+1;
            plot(Position.time,Position.signals.values,'c','LineWidth',i,...
                'Color',map(i,:));
            hold on
            Legende{i}=strcat('D=',num2str(D),'   C=', num2str(C),...
                                   '   m=', num2str(m));  
        end
    end
end
legend(Legende)