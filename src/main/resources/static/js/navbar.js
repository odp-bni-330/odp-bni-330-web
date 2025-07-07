document.addEventListener("DOMContentLoaded", function () {
    const userMenuButton = document.getElementById("user-menu-button");
    const userDropdown = document.getElementById("user-dropdown");

    if (userMenuButton && userDropdown) {
        // Mulai tersembunyi
        userDropdown.classList.add("hidden");

        userMenuButton.addEventListener("click", function (e) {
            e.stopPropagation(); // Mencegah bubbling ke document
            userDropdown.classList.toggle("hidden");
        });

        // Menutup dropdown jika klik di luar area
        document.addEventListener("click", function (event) {
            if (!userMenuButton.contains(event.target) && !userDropdown.contains(event.target)) {
                userDropdown.classList.add("hidden");
            }
        });
    }
});
