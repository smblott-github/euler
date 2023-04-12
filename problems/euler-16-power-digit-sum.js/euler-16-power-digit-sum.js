// Double function by using a carry bit adder
function double(list) {
    // Initialize variables
    let newList = []
    let carry = 0;

    // Repeat ripple adder for length of the list
    for (const num of list) {
        newList.push((2 * num + carry) % 10);
        if (2 * num + carry >= 10) {
            carry = 1;
        } else {
            carry = 0;
        }
    }

    // Add the extra bit if there is a carry at the end
    if (carry) newList.push(carry);

    // Return the new list
    return newList;
}

// Error Check
if (process.argv.length !== 3) {
    // Error Message
    console.log ("ERROR: Incorrect number of arguments. Expected 1, Received", process.argv.length - 2);
} else {
    // Initialize variables
    let nums = [1];
    let power = parseInt(process.argv[2]);

    // Double as many times as specified in CL arguments
    for (let i = 1; i < power + 1; i++) {
        nums = double(nums);
    }

    // Log the sum of the list
    console.log(nums.reduce((a,b) => a+b));
}


