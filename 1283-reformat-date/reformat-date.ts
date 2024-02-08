const monthMap: { [key: string]: string } = {
  Jan: '01',
  Feb: '02',
  Mar: '03',
  Apr: '04',
  May: '05',
  Jun: '06',
  Jul: '07',
  Aug: '08',
  Sep: '09',
  Oct: '10',
  Nov: '11',
  Dec: '12',
};

function reformatDate(date: string): string {
  const parts = date.split(' ');
  const day = parts[0];
  const month = parts[1];
  const year = parts[2];

  const regExp = /\d+/;
  const match = day.match(regExp);
  const formattedDay = match ? (match[0].length === 2 ? match[0] : `0${match[0]}`) : '';

  const monthNumber = monthMap[month];
  if (!monthNumber) {
    throw new Error(`Invalid month string: ${month}`);
  }
  return `${year}-${monthNumber}-${formattedDay}`;
}
