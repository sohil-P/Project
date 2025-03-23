// preloader
window.addEventListener("load", () => {
  const preloader = document.querySelector(".js-preloader");
  preloader.classList.add("fade-out");

  setTimeout(() => {
    preloader.style.display = "none";
    AOS.init();
  }, 1000);
});

// header bg

const headerBg = () => {
  const header = document.querySelector(".js-header");

  window.addEventListener("scroll", function () {
    if (this.scrollY > 0) {
      header.classList.add("bg-reveal");
    } else {
      header.classList.remove("bg-reveal");
    }
  });
};
headerBg();

// style-switcher script

//theme color
const themeColor = () => {
  const hueSlider = document.querySelector(".js-hue-slider");
  const html = document.querySelector("html");

  const setHue = (value) => {
    html.style.setProperty("--hue", value);
    document.querySelector(".js-hue").innerHTML = value;
  };

  hueSlider.addEventListener("input", function () {
    setHue(this.value);
    localStorage.setItem("--hue", this.value);
  });

  const slider = (value) => {
    hueSlider.value = value;
  };

  if (localStorage.getItem("--hue") !== null) {
    setHue(localStorage.getItem("--hue"));
    slider(localStorage.getItem("--hue"));
  } else {
    const hue = getComputedStyle(html).getPropertyValue("--hue");
    setHue(hue);
    slider(hue.split(" ").join(""));
  }
};
themeColor();

// theme light and dark mode

const themeLightDark = () => {
  const darkModeCheckbox = document.querySelector(".js-dark-mode");

  const themeMode = () => {
    if (localStorage.getItem("theme-dark") === "false") {
      document.body.classList.remove("t-dark");
    } else {
      document.body.classList.add("t-dark");
    }
  };
  darkModeCheckbox.addEventListener("click", function () {
    localStorage.setItem("theme-dark", this.checked);
    themeMode();
  });

  if (localStorage.getItem("theme-dark") !== null) {
    themeMode();
  }
  if (document.body.classList.contains("t-dark")) {
    darkModeCheckbox.checked = true;
  }
};
themeLightDark();

const styleSwitcherToggle = () => {
  const styleSwitcher = document.querySelector(".js-style-switcher");
  const styleSwitcherToggler = document.querySelector(
    ".js-style-switcher-toggler"
  );

  styleSwitcherToggler.addEventListener("click", function () {
    styleSwitcher.classList.toggle("open");
    this.querySelector("i").classList.toggle("fa-times");
    this.querySelector("i").classList.toggle("fa-cog");
  });
};
styleSwitcherToggle();

// nav

const navigation = () => {
  const navToggler = document.querySelector(".js-nav-toggler");
  const nav = document.querySelector(".js-nav");
  const navItem = nav.querySelectorAll("li");

  const navToggle = () => {
    nav.classList.toggle("open");
    navToggler.classList.toggle("active");
  };

  navToggler.addEventListener("click", navToggle);

  navItem.forEach((li) => {
    li.querySelector("a").addEventListener("click", () => {
      if (window.innerWidth <= 767) {
        navToggle();
      }
    });
  });
};
navigation();




// check login user
function isLoggedIn() {
  // Replace this with your actual login check logic
  return !!localStorage.getItem('userLoggedIn');
}

function displayUserProfile() {
  if (isLoggedIn()) {
    fetch('./profile.php')
      .then(response => response.json())
      .then(data => {
        if (data.username) {
          document.getElementById('username').textContent = data.username;
        }
      })
      .catch(error => console.error('Error fetching user data:', error));
  }
}

function requireLogin(event) {
  if (!isLoggedIn()) {
    event.preventDefault();
    alert('You must be logged in to purchase a service.');
    window.location.href = 'login.html';
  }
}

// Call displayUserProfile on page load
document.addEventListener('DOMContentLoaded', displayUserProfile);

///check login status
// function loginUser(username) {
//   // Replace this with your actual login logic
//   localStorage.setItem('userLoggedIn', 'true');
//   localStorage.setItem('userName', username);
//   window.location.href = 'index.html';
// }