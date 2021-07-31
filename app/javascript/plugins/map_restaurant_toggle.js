const initToggleMap = () => {
  const restaurantsList = document.querySelector("#js-list");
  const mapsList = document.querySelector("#js-map");
  const listBtn = document.querySelector("#list-btn");
  const mapBtn = document.querySelector("#map-btn");

  if (mapBtn) {
    mapBtn.addEventListener("click", () => {
      restaurantsList.classList.add("d-none");
      mapsList.classList.remove("d-none");
    });
    listBtn.addEventListener("click", () => {
      mapsList.classList.add("d-none");
      restaurantsList.classList.remove("d-none");
    });
  }
}

export { initToggleMap };
