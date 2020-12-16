function [ResX, ResY] = koch(segX,segY)
  startSegX = segX(1);
  startSegY = segY(1);
  endSegX = segX(2);
  endSegY = segY(2);
  if sqrt((endSegX-startSegX)^2+(endSegY-startSegY)^2)<0.001 % stop condition
    ResX = segX;
    ResY = segY;
  else
    middleSegX1 = startSegX + (endSegX-startSegX)/3;
    middleSegY1 = startSegY + (endSegY-startSegY)/3;
    middleSegX2 = startSegX + (endSegX-startSegX)*2/3;
    middleSegY2 = startSegY + (endSegY-startSegY)*2/3;
    
    topSegX = startSegX + (endSegX-startSegX)/2 - (endSegY-startSegY)/3;
    topSegY = startSegY + (endSegY-startSegY)/2 + (endSegX-startSegX)/3;
    
    SegX = [startSegX middleSegX1 topSegX middleSegX2 endSegX];
    SegY = [startSegY middleSegY1 topSegY middleSegY2 endSegY];
    
    SegX1 = SegX(1:2);
    SegY1 = SegY(1:2);
    SegX2 = SegX(2:3);
    SegY2 = SegY(2:3);
    SegX3 = SegX(3:4);
    SegY3 = SegY(3:4);
    SegX4 = SegX(4:5);
    SegY4 = SegY(4:5);
    [ResX1, ResY1] = koch(SegX1,SegY1);
    [ResX2, ResY2] = koch(SegX2,SegY2);
    [ResX3, ResY3] = koch(SegX3,SegY3);
    [ResX4, ResY4] = koch(SegX4,SegY4);
    ResX = [ResX1 ResX2 ResX3 ResX4];
    ResY = [ResY1 ResY2 ResY3 ResY4];
    
  end
  
        
end


%---------------main----------------------

clear; clc;
segX = [0 1];
segY = [0 0];
[x,y] = koch(segX,segY);

 plot(x, y);
    
