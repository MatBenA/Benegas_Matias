var valores = [true, false, 2, "hola", "mundo", 3, "char"];

let textos = [];

//1-
valores.forEach((element) => {
    if (typeof element === "string") {
        textos.push(element);
    }
});
console.log(
    `El elemento de texto de mayor longitud es "${
        textos[textos.length - 1]
    }" con ${textos.length} letras`
);

//2-
textos.sort(function (a, b) {
    return a.length - b.length;
});

console.log("A continuación se muestran los textos de menor a mayor:");
textos.forEach((element) => {
    console.log(element);
});

//3-
let numbers = [];
valores.forEach((element) => {
    if (typeof element === "number") {
        numbers.push(element);
    }
});

console.log("A continuación se muestran las operaciones aritméticas:");
console.log(`suma: ${numbers[0]} + ${numbers[1]} = ${numbers[0] + numbers[1]}`);
console.log(`resta: ${numbers[0]} - ${numbers[1]} = ${numbers[0] - numbers[1]}`);
console.log(`producto: ${numbers[0]} * ${numbers[1]} = ${numbers[0] * numbers[1]}`);
console.log(`división: ${numbers[0]} / ${numbers[1]} = ${numbers[0] / numbers[1]}`);