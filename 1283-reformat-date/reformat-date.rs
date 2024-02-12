use std::collections::HashMap;

impl Solution {
    pub fn reformat_date(date: String) -> String {
        let month_map: HashMap<&str, &str> = [
            ("Jan", "01"),
            ("Feb", "02"),
            ("Mar", "03"),
            ("Apr", "04"),
            ("May", "05"),
            ("Jun", "06"),
            ("Jul", "07"),
            ("Aug", "08"),
            ("Sep", "09"),
            ("Oct", "10"),
            ("Nov", "11"),
            ("Dec", "12"),
        ].iter().cloned().collect();

        let parts: Vec<&str> = date.split_whitespace().collect();
        if parts.len() < 3 {
            return "Invalid date format".to_string();
        }

        let day = parts[0];
        let month = parts[1];
        let year = parts[2];
        let day_digits = day.chars().filter(|c| c.is_digit(10)).collect::<String>();
        let formatted_day = if day_digits.len() == 1 {
            format!("0{}", day_digits)
        } else {
            day_digits
        };

        let month_number = match month_map.get(month) {
            Some(&number) => number,
            None => return "Invalid month string".to_string(),
        };

        format!("{}-{}-{}", year, month_number, formatted_day)
    }
}
