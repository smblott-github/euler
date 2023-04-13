// input from command line 
const n = parseInt(process.argv[2]);

//find the sum of positive integers less than n divisible by either 3 or 5
let sum = 0;
for (let i = 1; i < n; i++) {
  if (i % 3 === 0 || i % 5 === 0) {
    sum += i;
  }
}

console.log(sum);
