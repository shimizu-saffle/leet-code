impl Solution {
    pub fn min_operations(logs: Vec<String>) -> i32 {
        let mut current_depth = 0;

        for log in logs {
            match log.as_str() {
                "../" => {
                    if current_depth > 0 {
                        current_depth -= 1
                    }
                }
                "./" => {}
                _ => current_depth += 1,
            }
        }

        current_depth
    }
}