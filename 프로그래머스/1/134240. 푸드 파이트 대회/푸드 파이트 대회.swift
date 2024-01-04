import Foundation

func solution(_ food:[Int]) -> String {
    var result: String = ""
    
    for i in 0..<food.count {
        if food[i] != 1 {
            for j in 0...(food[i] / 2)-1{
                result += "\(i)"
            }
        }
    }
    result += result.reversed()
    result.insert("0", at: result.index(result.startIndex, offsetBy: result.count/2))
    
    return result
}