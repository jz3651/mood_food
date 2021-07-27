const likeBtns = document.querySelectorAll(".like-button");

const likeBtnAnimated = () => {
    likeBtns.forEach((btn) => {
        // let clicked = false;
        // let likeIcon = document.querySelectorAll(".like-icon");
        btn.addEventListener("click", (event) => {
            const likeIcon = btn.querySelector(".like-icon");
            // likeIcon has class fas, we remove fas and replace it with far
            if(likeIcon.classList.contains("far")) {
                likeIcon.classList.remove("far");
                likeIcon.classList.add("fas");
            } else {
                likeIcon.classList.remove("fas");
                likeIcon.classList.add("far");
            };
            // else likeIcon has class far, we remove far and replace with fas
        //     if(!clicked) {
        //         clicked = true;
        //         likeIcon.innerHTML = `<i class="fas fa-heart"></i>`;
        //     } else {
        //         clicked = false;
        //         likeIcon.innerHTML = `<i class="far fa-heart"></i>`;
        //     }
        });
    });
};

export { likeBtnAnimated };
