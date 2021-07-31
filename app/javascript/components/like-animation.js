const likeBtns = document.querySelectorAll(".like-button");

const likeBtnAnimated = () => {
    likeBtns.forEach((btn) => {
        // let clicked = false;
        // let likeIcon = document.querySelectorAll(".like-icon");
        console.log("like button click")
        btn.addEventListener("click", (event) => {
            const likeIcon = btn.querySelector(".like-icon");
            // likeIcon has class fas, we remove fas and replace it with far
            console.log("event listener")
            if(likeIcon.classList.contains("far")) {
                console.log("icon liked")
                likeIcon.classList.remove("far");
                likeIcon.classList.add("fas");
            } else if (likeIcon.classList.contains("fas")) {
                likeIcon.classList.remove("fas");
                console.log("icon unliked")
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
