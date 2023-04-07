public class euler_problem_24 {
    public static int count = 0; // Counter to keep track of the number of permutations
    public static String result = ""; // Variable to store the result permutation

    // Helper function to compute the lexicographic permutations recursively
    public static void permute(String digits, String permutation) {
        if (digits.length() == 0) {
            count++;
            if (count == 100) {
                result = permutation;
            }
        } else {
            for (int i = 0; i < digits.length(); i++) {
                String remainingDigits = digits.substring(0, i) + digits.substring(i+1);
                permute(remainingDigits, permutation + digits.charAt(i));
            }
        }
    }

    public static void main(String[] args) {
        permute("0123456789", "");
        System.out.println(result);
    }
}



