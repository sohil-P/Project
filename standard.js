const cards = document.querySelector(".card-detail");
const payments = document.querySelector(".payment-detail select");
payments.addEventListener("change", (e) => {
  if (e.target.value === "credit_card" || e.target.value === "debit_card") {
    cards.classList.remove("card-hidden");
  } else {
    cards.classList.add("card-hidden");
  }
});
const frequency = document.querySelector(".service-frequency select");
const price = document.querySelector(".main-price");
const quantitySelect = document.getElementById("workers-numbers");
const defaultWorker = document.getElementById("default");
const defaultLabel = document.getElementById("default-label");

const basePrices = {
  monthly: 1390,
  two_monthly: 2780,
  three_monthly: 4170,
};
const increments = {
  monthly: 120,
  two_monthly: 240,
  three_monthly: 350,
};

const calculatePrice = () => {
  const selectedPlan = frequency.value;
  const selectedQuantity = parseInt(quantitySelect.value, 10);
  const basePrice = basePrices[selectedPlan];
  const increment = increments[selectedPlan];

  let total = 0;

  if (selectedQuantity === 4) {
    total = increment * 4;
    defaultWorker.style.display = "none";
    defaultLabel.style.display = "none";
  } else if (selectedQuantity === 5) {
    total = increment * 5;
    defaultWorker.style.display = "none";
    defaultLabel.style.display = "none";
  } else if (selectedQuantity === 6) {
    total = increment * 6;
    defaultWorker.style.display = "none";
    defaultLabel.style.display = "none";
  } else if (selectedQuantity === 7) {
    total = increment * 7;
    defaultWorker.style.display = "none";
    defaultLabel.style.display = "none";
  } else if (selectedQuantity === 8) {
    total = increment * 8;
    defaultWorker.style.display = "none";
    defaultLabel.style.display = "none";
  } else if (selectedQuantity === 9) {
    total = increment * 9;
    defaultWorker.style.display = "none";
    defaultLabel.style.display = "none";
  } else if (selectedQuantity === 10) {
    total = increment * 10;
    defaultWorker.style.display = "none";
    defaultLabel.style.display = "none";
  } else if (selectedQuantity === 11) {
    total = increment * 11;
    defaultWorker.style.display = "none";
    defaultLabel.style.display = "none";
  } else if (selectedQuantity === 12) {
    total = basePrice;
    defaultWorker.style.display = "none";
    defaultLabel.style.display = "none";
  } else if (selectedQuantity >= 13) {
    total = basePrice + increment * (selectedQuantity - 12);
    defaultWorker.style.display = "none";
    defaultLabel.style.display = "none";
  } else if (quantitySelect.value === "noneValue") {
    total = basePrice;
    defaultWorker.style.display = "block";
    defaultLabel.style.display = "block";
  }

  // Display the total price
  price.textContent = `$${total}`;
};

// Attach event listeners
frequency.addEventListener("change", calculatePrice);
quantitySelect.addEventListener("change", calculatePrice);
