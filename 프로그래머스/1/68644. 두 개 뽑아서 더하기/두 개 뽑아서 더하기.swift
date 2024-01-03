import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var result: [Int] = []
    var temp: [Int] = []
    
    temp = numbers.sorted()
    //1, 1, 2, 3, 4
    for i in 0...temp.count-2{
        for j in i+1...temp.count-1{
            if !result.contains(temp[i]+temp[j]){
                result.append(temp[i]+temp[j])
            }
        }
    }
    return result.sorted()
}