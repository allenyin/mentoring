global f;
f = figure();
for k = 1:4
    subplot(2,2,k)
    set(gca, 'tag', num2str(k))
end

set(gcf, 'WindowButtonMotionFcn', @mouseMove);
