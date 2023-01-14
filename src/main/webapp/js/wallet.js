document.querySelector('.tpbtn').addEventListener('click',function(){
    console.log(Number(document.querySelector('#amt').value));
    console.log(Number(document.querySelector('.cbalamt').textContent));
    let cbal=Number(document.querySelector('.cbalamt').textContent);
    let topamt=Number(document.querySelector('#amt').value);
    cbal+=topamt;
    document.querySelector('.cbalamt').textContent=cbal;
    console.log(cbal);
})

