function result = CantorSet (segX,segY)
  startSegX = segX(1);
  endSegX = segX(2);
  if endSegX-startSegX < 0.01 % stop condition
    result = segX;
  else
    middleSegX1 = startSegX + (endSegX-startSegX)/3;
    middleSegX2 = startSegX + (endSegX-startSegX)*2/3;
    segX = [startSegX middleSegX1 middleSegX2 endSegX];
    segX1 = segX(1:2); % divide
    segX2 = segX(3:4);
    res1 = CantorSet(segX1); % invoke it selft
    res2 = CantorSet(segX2);
    result = [res1 res2];
    
        
  end
  
        
end

%------------------mian----------------

clear; clc;
segX = [0 1];
segY = [1 1];
x= CantorSet (segX,segY);
y = ones(size(x));

for i = 1: 2 :size(x)
    plot(x(i:i+1), y(i:i+1));
    
    hold on;
           
end
hold off;
