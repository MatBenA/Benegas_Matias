const num = 101;

console.log(esPar(num));

function esPar(num){
    if(num % 2 === 0){
        return `par`;
    }
    else{
        return `impar`;
    }
}