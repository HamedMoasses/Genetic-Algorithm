function    crosspop=crossover2(crosspop,pop,nvar,ncross,dis)

f=[pop.fit];
f=f./sum(f);
f=cumsum(f);


for n=1:2:ncross

    
    i1=find(rand<=f,1,'first');
    i2=find(rand<=f,1,'first');
    
    
p1=pop(i1).par;
p2=pop(i2).par;


j1=randi([1 nvar-2]);
j2=randi([j1+1 nvar-1]);

o1=[p1(1:j1) p2(j1+1:j2) p1(j2+1:end)];
o2=[p2(1:j1) p1(j1+1:j2) p2(j2+1:end)];

o1=unique([o1 randperm(nvar)],'stable');
o2=unique([o2 randperm(nvar)],'stable');


crosspop(n).par=o1;
crosspop(n).fit=fitness(o1,dis,nvar);


crosspop(n+1).par=o2;
crosspop(n+1).fit=fitness(o2,dis,nvar);

end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                   %
%                          www.matlabnet.ir                         %
%                   Free Download  matlab code and movie            %
%                          Shahab Poursafary                        %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%