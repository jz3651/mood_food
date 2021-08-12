import easydropdown from 'easydropdown';
function dropDownStyle() {
    const moodDropdown = document.querySelector('#mood-dropdown');
    if (moodDropdown) {
        const moodEdd = easydropdown(moodDropdown);
    };
}

export { dropDownStyle };