function findPermutationDifference(s: string, t: string): number {
    let difference = 0;
    let sIndexMap: {[key: string]: number} = {};

    for (let i = 0; i < s.length; i++) {
        sIndexMap[s[i]] = i;
    }

    for (let i = 0; i < t.length; i++) {
        difference += Math.abs(sIndexMap[t[i]] - i);
    }

    return difference;
}