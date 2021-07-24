const likeBtn = document.querySelector(".like-button");
let likeIcon = document.querySelector("#like-icon")
let clicked = false;

const likeBtnAnimated = likeBtn.addEventListener("click", () => {
    if(!clicked) {
        clicked = true;
        likeIcon.innerHTML = `<i class="fas fa-heart"></i>`;
    } else {
        clicked = false;
        likeIcon.innerHTML = `<i class="far fa-heart"></i>`;
    }
    // console.log("hello")
});

export { likeBtnAnimated };
