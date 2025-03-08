function digital_clock_with_date()
    % Create a figure window
    hFig = figure('Name', 'Digital Clock', 'NumberTitle', 'off', ...
                  'MenuBar', 'none', 'ToolBar', 'none', 'Color', 'k');

    % Set up the axes
    hAx = axes('Parent', hFig, 'Position', [0 0 1 1], 'XColor', 'k', 'YColor', 'k');
    set(hAx, 'XTick', [], 'YTick', [], 'XLim', [0 1], 'YLim', [0 1]);

    % Add a title to the figure
    title(hAx, 'Digital Clock', 'Color', 'w', 'FontSize', 20, 'FontWeight', 'bold');

    % Initialize text objects for displaying the time and date
    hTextTime = text(0.5, 0.5, '', 'FontSize', 40, 'Color', 'r', ...
                     'FontWeight', 'bold', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
    hTextDate = text(0.5, 0.4, '', 'FontSize', 30, 'Color', 'r', ...
                     'FontWeight', 'bold', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');

    % Loop to update the clock every second
    while ishandle(hFig)
        % Get the current time
        currentTime = datetime('now');
        currentTimeStr = datestr(currentTime, 'HH:MM:SS');
        currentDateStr = datestr(currentTime, 'dddd');
        currentDateStr = datestr(currentTime, 'mmmm dd, yyyy');
        
        % Update the text objects
        set(hTextTime, 'String', currentTimeStr);
        set(hTextDate, 'String', currentDateStr);
        
        % Pause for a second
        pause(1);
    end
  end