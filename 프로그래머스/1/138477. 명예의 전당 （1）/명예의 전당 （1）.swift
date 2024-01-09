import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var temp: [Int] = []
    var result: [Int] = []
    
    for i in 0...score.count-1{ 
        temp.append(score[i]) 
        temp.sort(by: >)
        
        if i < k{
            result.append(Int(temp[i]))
        }else{
            result.append(Int(temp[temp.index(temp.startIndex, offsetBy: k-1)]))
        }
    }
    return result
}