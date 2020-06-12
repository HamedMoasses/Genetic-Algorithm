function  [Z]=fitness(x,v,w,W)


Z=sum(x.*v);




C=max(sum(x.*w)-W,0);


Z=Z-1*C;






end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                   %
%                          www.matlabnet.ir                         %
%                   Free Download  matlab code and movie            %
%                          Shahab Poursafary                        %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%