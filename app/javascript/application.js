// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const burger = document.querySelector('.burger');
const nav = document.querySelector('#nav-menu');
const navButtons = document.querySelector("#navButtons");

function toggle_menu () {
    burger.classList.toggle('is-active')
    nav.classList.toggle('is-active')
    navButtons.classList.toggle("is-grouped")
};

document.addEventListener("DOMContentLoaded", () =>{
    burger.addEventListener("click", toggle_menu);
});
