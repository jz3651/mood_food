const turbolinkScroll = () => {
    const elements = document.querySelectorAll("[data-turbolinks-scroll]");
    
    elements.forEach(function(element){
    
    element.addEventListener("click", ()=> {
        Turbolinks.scroll['top'] = document.scrollingElement.scrollTop;
    });
    
    element.addEventListener("submit", ()=> {
        Turbolinks.scroll['top'] = document.scrollingElement.scrollTop;
    });
    
    });

    if (Turbolinks.scroll['top']) {
    document.scrollingElement.scrollTo(0, Turbolinks.scroll['top']);
    }

    Turbolinks.scroll = {};
}

export { turbolinkScroll };