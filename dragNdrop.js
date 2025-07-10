let diffX, diffY, draggedElement;

function grabber(event) {
    draggedElement = event.currentTarget;
    const rect = draggedElement.getBoundingClientRect();
    diffX = event.clientX - rect.left;
    diffY = event.clientY - rect.top;

    document.addEventListener('mousemove', mover, true);
    document.addEventListener('mouseup', dropper, true);

    event.stopPropagation();
    event.preventDefault();
}

function mover(event) {
    draggedElement.style.position = 'absolute';
    draggedElement.style.left = (event.clientX - diffX) + 'px';
    draggedElement.style.top = (event.clientY - diffY) + 'px';

    event.stopPropagation();
}

function dropper(event) {
    document.removeEventListener('mousemove', mover, true);
    document.removeEventListener('mouseup', dropper, true);
    event.stopPropagation();
}

document.addEventListener('DOMContentLoaded', () => {
    const saturn = document.getElementById('saturn');
    saturn.addEventListener('mousedown', grabber);
});
