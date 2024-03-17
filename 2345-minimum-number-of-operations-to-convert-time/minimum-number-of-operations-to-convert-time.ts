function convertTime(current: string, correct: string): number {
  function timeToMinutes(time: string): number {
    const [hours, minutes] = time.split(':').map(Number);
    return hours * 60 + minutes;
  }

  let gap = timeToMinutes(correct) - timeToMinutes(current);
  let count = 0;
  const operations = [60, 15, 5, 1];

  for (const op of operations) {
    count += Math.floor(gap / op);
    gap %= op;
  }

  return count;
}
