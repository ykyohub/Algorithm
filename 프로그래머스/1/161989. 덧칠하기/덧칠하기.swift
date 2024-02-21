import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var count: Int = 0
    var index: Int = 0
    var arr = Array(repeating: 1, count: n+1)
    var num:[Int] = section
    
    for i in num {
        arr[i] = 0
    }
    
    while index < arr.count {
        if arr[index] == 0 {
            count += 1
            index += m
        } else {
            index += 1
        }
    }
    
    return count
}
