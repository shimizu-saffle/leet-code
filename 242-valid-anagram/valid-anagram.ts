function isAnagram(s: string, t: string): boolean {
  if (s.length !== t.length) return false;
  const counts: Map<string, number> = new Map();

  for (const char of s) {
    counts.set(char, (counts.get(char) ?? 0) + 1);
  }

  for (const char of t) {
    if (!counts.has(char) || counts.get(char) === 0) {
      return false;
    }
    counts.set(char, counts.get(char)! - 1);
  }

  return true;
}