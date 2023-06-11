let text = prompt("Ingrese un texto para encontrar su primer vocal");
text = text.toLowerCase();
text = Array.from(text);
const vocales = ["a", "e", "i", "o", "u"];

let indexT;
let indexV;
let vocalEncontrada = false;
for (let i = 0; i < text.length; i++) {
    for (let j = 0; j < vocales.length; j++) {
        if (text[i] === vocales[j]) {
            indexT = i;
            indexV = j;
            vocalEncontrada = true;
        }
    }
    if (vocalEncontrada) {
        break;
    }
}
if (vocalEncontrada) {
    console.log(
        `La vocal "${vocales[indexV]}" fue encontrada en la posición ${indexT}`
    );
}
else{ console.log("Ninguna vocal fue encontrada");}
