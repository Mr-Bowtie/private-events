// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


document.addEventListener("turbo:load", () =>{
    const burger = document.querySelector('.burger');
    const nav = document.querySelector('#nav-menu');
    const navButtons = document.querySelector("#navButtons");
    burger.addEventListener("click", () =>{
        burger.classList.toggle('is-active')
        nav.classList.toggle('is-active')
        navButtons.classList.toggle("is-grouped")
        navButtons.classList.toggle("is-two-thirds")
    })
});
