window.addEventListener('message', function(event) {
    if (event.data.type === 'openMenu') {
        document.getElementById('menu').style.display = 'block';
    }
});

document.addEventListener('keydown', function(event) {
    if (event.key === "Escape") { 
        fetch(`https://${GetParentResourceName()}/closeMenu`, {
            method: 'POST',
            body: JSON.stringify({})
        });

        document.getElementById('menu').style.display = 'none';
    }
});