function plot2axis(data)

index = 1;

type1 = find(data(:,5)==1);
type2 = find(data(:,5)==2);
type3 = find(data(:,5)==3);

for i = 1:3
  for j = i+1:4

    subplot(3,2,index);
    plot(data(type1,i),data(type1,j),"or","markersize",8);
    hold on;
    plot(data(type2,i),data(type2,j),"+g","markersize",8);
    hold on;
    plot(data(type3,i),data(type3,j),"*b","markersize",8);
    hold on;
    xlabel(getlabel(i))
    ylabel(getlabel(j))
    index = index+1;
  endfor
endfor
