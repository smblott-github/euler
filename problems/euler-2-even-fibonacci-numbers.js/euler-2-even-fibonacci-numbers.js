const n = parseInt(process.argv[2]);

let total = 0;
let prev = 1;
let curr = 1;

while (curr < n) {
    if (curr % 2 === 0) {
        total += curr;
    }

    const tmp = curr;
    curr += prev;
    prev = tmp;
}

console.log(total);
