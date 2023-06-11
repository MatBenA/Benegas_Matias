let randNums = [];
for (let i = 1; i <= 100; i++) {
    const numRandom = randomNum(1, 100);
    if (randNums.includes(numRandom)) {
        i--;
    } else {
        randNums.push(numRandom);
    }
}

randNums.forEach((num) => {
    console.log(num);
});

function randomNum(min, max) {
    return Math.random() * (max - min) + min;
}
