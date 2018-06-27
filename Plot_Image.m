% Import image
image = imread('C:/Users/Abdou/Desktop/Schema_Bricks.png');

% Bricks Coordinates
x = [386 339 241 664 689 669 621 713 691 879 859 656 793 800 828 810 791 796 480 423 472 36];
y = [535 400 333 478 424 454 454 463 546 452 466 43 382 447 479 487 494 461 406 266 501 404];

% SR Affectations - Always put the center brick first
SR1 = [14 10 11 12 13 15 17 18];
SR2 = [19 3 7 14];
SR3 = [21 1 2 16 20];
SR4 = [6 4 5 8 9 22];

% Drawing Marks
for i = 1:(length(SR1))
    if i==1
        image = insertShape(image,'Filledcircle',[x(SR1(i)) y(SR1(i)) 20],'LineWidth',5);
    else
        image = insertShape(image,'circle',[x(SR1(i)) y(SR1(i)) 15],'LineWidth',5);
    end
end
for i = 1:(length(SR2))
    if i==1
        image = insertShape(image,'Filledcircle',[x(SR2(i)) y(SR2(i)) 20],'LineWidth',5, 'Color', 'red');
    else
        image = insertShape(image,'circle',[x(SR2(i)) y(SR2(i)) 15],'LineWidth',5, 'Color', 'red');
    end
end
for i = 1:(length(SR3))
    if i==1
        image = insertShape(image,'FilledCircle',[x(SR3(i)) y(SR3(i)) 20],'LineWidth',5, 'Color', 'green');
    else
        image = insertShape(image,'Circle',[x(SR3(i)) y(SR3(i)) 15],'LineWidth',5, 'Color', 'green');
    end
end
for i = 1:(length(SR4))
    if i==1
        image = insertShape(image,'FilledCircle',[x(SR4(i)) y(SR4(i)) 20],'LineWidth',5, 'Color', 'blue');
    else
        image = insertShape(image,'Circle',[x(SR4(i)) y(SR4(i)) 15],'LineWidth',5, 'Color', 'blue');
    end
end
image = insertShape(image,'line',[915 180 945 180],'LineWidth',5);
image = insertText(image,[960 170],'SR 1','BoxColor','white');
image = insertShape(image,'line',[915 230 945 230],'LineWidth',5, 'Color', 'red');
image = insertText(image,[960 221],'SR 2','BoxColor','white');
image = insertShape(image,'line',[915 280 945 280],'LineWidth',5, 'Color', 'green');
image = insertText(image,[960 271],'SR 3','BoxColor','white');
image = insertShape(image,'line',[915 330 945 330],'LineWidth',5, 'Color', 'blue');
image = insertText(image,[960 321],'SR 4','BoxColor','white');

imshow(image);