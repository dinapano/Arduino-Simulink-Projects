clear all;
a=arduino;
b=3975;
t=0;
while 1
    v=readVoltage(a,'A0');
    analog=(v/0.0048875);
    resistance=(1023-analog)*10000/analog;
    temperature=1/(log(resistance/10000)/b+1/298.15)-273.15;
    t=[t temperature];
    plot(t);
    ylabel('Temperature in Celcius');
    xlabel('Time in Seconds');
    grid;
    pause(1);
    disp(temperature);
end
