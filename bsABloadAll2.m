function [ eAll ] = bsABloadAll2( info)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

    ppt=0;
    eAll=[];
    for c=1:size(info,1)
        id=info(c,3);
        pp=info(c,1)*info(c,2);
        if pp>.03
            idStr=num2str(id);
            disp([idStr ' ' num2str(pp) ' ' num2str(info(c,2))]);
            ee=bsABloadEnergy2(['e' idStr '.raw']);
            eval(['e' idStr '=ee;']);
            ii= ee==-1;
            ee(ii)=0;
            
            mm=max(reshape(ee, 1, numel(ee)));
            ee=ee/mm;
            if isempty(eAll)
                eAll=ee;
            else
                if info(c,2)>0
                    eAll=eAll+ee;
                    ppt=ppt+1;
                else
                    eAll=eAll-ee;
                end
            end
        end
    end
    eAll=eAll/ppt;

end

