// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

class Navbar {
    constructor(target, menu, menu_buttons) {
        if (target instanceof HTMLElement && menu instanceof HTMLElement) {
            this.btn = target;
            this.menu = menu;
            this.menu_buttons = menu_buttons;

            this.btn.addEventListener('click', () => {
                this.toggle_menu();
            });
        } else {
            throw new TypeError("The Target and Menu arguments must be DOM objects");
        }
        // this.isOpen = false;
    }

    toggle_menu () {
       this.btn.classList.toggle('is-active')
       this.menu.classList.toggle('is-active')
       this.menu_buttons.classList.toggle("is-grouped")
    }
}

window.addEventListener("DOMContentLoaded", () => {
    var navbar = new Navbar(
        document.querySelector(".burger"),
        document.querySelector("#nav-menu"),
        document.querySelector("#navButtons")
    );

})

