document.querySelectorAll('input[type="number"]').forEach(inputNumber => {
    inputNumber.oninput=() =>{
        if(inputNumber.ariaValueMax.length > inputNumber.maxLenght) inputNumber.value 
        = inputNumber.value.slice(0, inputNumber.maxLength);
    };
});