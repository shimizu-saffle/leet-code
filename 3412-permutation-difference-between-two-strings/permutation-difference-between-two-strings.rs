impl Solution {
    pub fn find_permutation_difference(s: String, t: String) -> i32 {
        let mut difference = 0;
        let mut s_index_map = [0; 26];

        for (i, c) in s.chars().enumerate() {
            s_index_map[(c as u8 - 'a' as u8) as usize] = i;
        }

        for (i, c) in t.chars().enumerate() {
            difference += (s_index_map[(c as u8 - 'a' as u8) as usize] as i32 - i as i32).abs();
        }

        difference
    }
}