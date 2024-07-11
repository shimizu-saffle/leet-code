function finalValueAfterOperations(operations: string[]): number {
    let X = 0;
    
    for (let operation of operations) {
        if (operation.includes("++")) {
            X += 1;
        } else if (operation.includes("--")) {
            X -= 1;
        }
    }
    
    return X;
}
