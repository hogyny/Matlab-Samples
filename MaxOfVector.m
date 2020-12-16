function y = find_maximumPos(V)
maxi =V(1);
pos = 1;
    for k =2 : length(V)
        if V(k) > maxi
        maxi = V(k);
        pos = k;
        end
    end
    y = sprintf('The maximum value is %d and it is located on index %d', maxi,pos);
end

%...................main......................

V = [2,5,6,7,2,1,3];
find_maximumPos(V)
