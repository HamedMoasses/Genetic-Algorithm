function    crosspop=crossovert(crosspop,pop,nvar,ncross,dis)

ntour=10;

npop=length(pop);

for n=1:2:ncross

    
    s=randperm(npop,ntour);
    
    tourpop=pop(s);
    
    [~,index]=sort([tourpop.fit]);
    
    
    tourpop=tourpop(index);
    

    
    
p1=tourpop(1).par;
p2=tourpop(2).par;


j=randi([1 nvar-1]);

o1=[p1(1:j) p2(j+1:end)];
o2=[p2(1:j) p1(j+1:end)];

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