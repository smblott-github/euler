function sumOfSquares(n) {
  let sum = 0;
  for (let i = 1; i <= n; i++) {
    sum += i ** 2;
  }
  return sum;
}

function squareOfSum(n) {
  let sum = 0;
  for (let i = 1; i <= n; i++) {
    sum += i;
  }
  return sum ** 2;
}

const n = process.argv[2];
const difference = squareOfSum(n) - sumOfSquares(n);
console.log(difference);