function mouseMove(object, eventdata)
    C = get(gcf, 'CurrentPoint');

    % find which subplot we are at
    fprintf('Subplot %s\n', get(gcf, 'tag'));
    suptitle(['(X,Y)=(', num2str(C(1,1)), ', ', num2str(C(1,2)), ')']);
end
