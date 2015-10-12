function [ out ] = read_real( filename, count )
%READ_COMPLEX Summary of this function goes here
%   Detailed explanation goes here

    [tidin msg]=fopen(filename,'r');
    if (tidin==-1)
        fprintf('error opening %s: %s\n',filename, msg);
        out=[];
        return
    end

    if (nargin==1) 
        count=inf;
    end

    out=fread(tidin,count,'int16');
end

