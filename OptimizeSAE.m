% calculate the parameters of Ziegler Nichols
cpp=(5-1.27)/(6-4) 
T=26.2-22; 
L=22-20
cpc0=1.2*T/cpp/L 
Ti=2*L 
Td=0.5*L 
cic0=cpc0/Ti 
cdc0=cpc0*Td 
% intitalize SAE to a very big number
minsae=1E200
tic % start counter for cpu-time
% nested loops for brute force search
for fcpc=0.5:0.01:0.7
    for fcic=0.4:0.01:0.6
        for fcdc=0.6:0.01:0.9
            cpc=cpc0*fcpc;
            cic=cic0*fcic;
            cdc=cdc0*fcdc;
            sim('SAE')
            if sae<minsae
                cpcbest=cpc;
                cicbest=cic;
                cdcbest=cdc;
                minsae=sae;
            end
        end
    end
end
elapsedTime=toc % time for brute force
