impl Solution {
    pub fn score_of_string(s: String) -> i32 {
        let mut score = 0;
        let mut chars = s.chars().peekable();

        while let Some(current) = chars.next() {
            if let Some(&next) = chars.peek() {
                let diff = (current as i32 - next as i32).abs();
                score += diff;
            }
        }

        score
    }
}
