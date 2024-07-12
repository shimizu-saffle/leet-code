import java.util.List;

public class Solution {
    public int finalValueAfterOperations(List<String> operations) {
        int x = 0;
        for (String op : operations) {
            if (op.equals("++X") || op.equals("X++")) {
                x++;
            } else if (op.equals("--X") || op.equals("X--")) {
                x--;
            }
        }
        return x;
    }
}