impl Solution {
    pub fn convert_time(current: String, correct: String) -> i32 {
        fn time_to_minutes(time: &str) -> i32 {
            let parts: Vec<&str> = time.split(':').collect();
            parts[0].parse::<i32>().unwrap() * 60 + parts[1].parse::<i32>().unwrap()
        }

        let mut gap = time_to_minutes(&correct) - time_to_minutes(&current);
        
        let operations = [60, 15, 5, 1];
        let mut count = 0;

        for op in operations.iter() {
            count += gap / op;
            gap %= op;
        }

        count
    }
}
