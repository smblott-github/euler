public class euler_24_lexicographic_permutations {
    public static int count = 0;
    public static String result = "";

    public static void permute(String digits, String permutation, int target) {
        if (digits.length() == 0) {
            count++;
            if (count == target) {
                result = permutation;
            }
        } else {
            for (int i = 0; i < digits.length(); i++) {
                String remainingDigits = digits.substring(0, i) + digits.substring(i+1);
                permute(remainingDigits, permutation + digits.charAt(i), target);
            }
        }
    }

    public static void main(String[] args) {
        int target = Integer.parseInt(args[0]);
        permute("0123456789", "", target);
        System.out.println(result);
    }
}