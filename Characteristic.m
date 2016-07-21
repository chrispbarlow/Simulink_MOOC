U0=[]
Y0=[]
for U=1:0.2:10
    sim('ZieglerNicholsStart')
    U0=[U0,U]
    Y0aktuell=Y.signals.values(length(Y.signals.values))
    Y0=[Y0,Y0aktuell]
end
plot(U0,Y0)
xlabel('Plant-Input U')
ylabel('Plant-Output Y')