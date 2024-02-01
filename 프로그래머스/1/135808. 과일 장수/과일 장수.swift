import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result: Int = 0
    var start = m-1
    var score = score
        
    score.sort(by: >)
    
    while start < score.count {
        result += m*score[start]
        start += m
    }
    
    return result
}