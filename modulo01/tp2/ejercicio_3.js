const num = 6;
let factorial = 1;

if(num === 0){
    factorial = 0;
}
else{
for (let i = 1; i <= num; i++) {
    factorial *= i;
}
}
console.log(factorial);