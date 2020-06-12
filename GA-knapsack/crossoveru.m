function    crosspop=crossoveru(crosspop,pop,nvar,ncross,v,w,W)

f=[pop.fit];
f=f./sum(f);
f=cumsum(f);


for n=1:2:ncross

    
    i1=find(rand<=f,1,'first');
    i2=find(rand<=f,1,'first');
    
    
p1=pop(i1).par;
p2=pop(i2).par;



mask=randi([0 1],1,nvar);

o1=zeros(1,nvar);
o2=zeros(1,nvar);

for i=1:nvar

    if mask(i)==1
        o1(i)=p1(i);
        o2(i)=p2(i);
    else
        o1(i)=p2(i);
        o2(i)=p1(i);
    end
    
    
end




crosspop(n).par=o1;
crosspop(n).fit=fitness(o1,v,w,W);


crosspop(n+1).par=o2;
crosspop(n+1).fit=fitness(o2,v,w,W);

end

end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                   %
%                          www.matlabnet.ir                         %
%                   Free Download  matlab code and movie            %
%                          Shahab Poursafary                        %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%