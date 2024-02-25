function minOperations(logs: string[]): number {
    let currentDepth = 0;

    const getLogType = (log: string): 'child' | 'parent' | 'current' => {
        switch (log) {
            case '../':
                return 'parent';
            case './':
                return 'current';
            default:
                return 'child';
        }
    };

    for (const log of logs) {
        switch (getLogType(log)) {
            case 'child':
                currentDepth++;
                break;
            case 'parent':
                if (currentDepth > 0) currentDepth--;
                break;
            case 'current':
                break;
        }
    }

    return currentDepth;
}
