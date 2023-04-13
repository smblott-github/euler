const total = parseInt(process.argv[2]);

function findHowManyDifferentWays(total) {
    const coins = [1, 2, 5, 10, 20, 50, 100, 200];
    const ways = Array.from({ length: total + 1 }, () => 0);
    ways[0] = 1;

    for (let i = 0; i < coins.length; i++) {
        for (let j = coins[i]; j <= total; j++) {
            ways[j] += ways[j - coins[i]];
        }
    }

    return ways[total];
}

const combinations = findHowManyDifferentWays(total);
console.log(combinations);