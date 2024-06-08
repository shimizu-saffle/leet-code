import java.util.PriorityQueue

class Solution {
    fun lastStoneWeight(stones: IntArray): Int {
        val maxHeap = PriorityQueue<Int>(compareByDescending { it })
        stones.forEach { maxHeap.add(it) }

        while (maxHeap.size > 1) {
            val stone1 = maxHeap.poll()
            val stone2 = maxHeap.poll()
            if (stone1 != stone2) {
                maxHeap.add(stone1 - stone2)
            }
        }

        return if (maxHeap.isEmpty()) 0 else maxHeap.poll()
    }
}