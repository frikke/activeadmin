// Entry point for the build script in your package.json
// IGNORED =require active_admin/base
import Rails from '@rails/ujs';
import 'flowbite';
// import "flowbite/dist/flowbite.turbo.js";


// On page load or when changing themes, best to add inline in `head` to avoid FOUC
if (localStorage.getItem('color-theme') === 'dark' || (!('color-theme' in localStorage) && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
  document.documentElement.classList.add('dark');
} else {
  document.documentElement.classList.remove('dark')
}

window.Rails = Rails;
Rails.start();
