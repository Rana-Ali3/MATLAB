    figure;
  
    % Set the size and position of the traffic signal
     hight = 150;
    width = 50;
    place_of_the_signal = [0, 0, width, hight];
    
    % Draw the rectangular background for the traffic signal
    %detect its position and its curve value and its colour as black
    rectangle('Position', place_of_the_signal, 'Curvature', 0.2, 'FaceColor', 'k');
    
    % choose the diameter and position of the each light signal
    d = 30;
    place_of_lights = [place_of_the_signal(1) + (width - d) / 2, ...
                     place_of_the_signal(2) + hight - d - 10, ...
                     d, d];
    
    % Draw the red light signal on traffic signal and set its place on the
    %black rectangle we draw 
    rectangle('Position', place_of_lights, 'Curvature', 1, 'FaceColor', 'r');
    
    % Update the position for the yellow light on the traffic signal
    place_of_lights(2) = place_of_the_signal(2) + hight - 2 * d - 20;
    
   % Draw the yellow light signal on traffic signal and set its place on the
    %black rectangle we draw 
    rectangle('Position', place_of_lights, 'Curvature', 1, 'FaceColor', 'y');
    
    % Update the light position for the green light on the traffic signal
    place_of_lights(2) = place_of_the_signal(2) + d + 10;
    
   % Draw the green light signal on traffic signal and set its place on the
    %black rectangle we draw 
    rectangle('Position', place_of_lights, 'Curvature', 1, 'FaceColor', 'g');
    
    % Set the size and position of the pole that siignal will stand on it
    %choose its position
    poleHeight = 50;
    poleWidth = 10;
    polePosition = [place_of_the_signal(1) + (width - poleWidth) / 2, ...
                    place_of_the_signal(2) - poleHeight, ...
                    poleWidth, poleHeight];
    
    % Draw the pole
    rectangle('Position', polePosition, 'Curvature', 0.2, 'FaceColor', 'k');

