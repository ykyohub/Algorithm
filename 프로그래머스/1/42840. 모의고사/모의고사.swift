import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var one:[Int] = [1, 2, 3, 4, 5]
    var two:[Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    var three:[Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var answer:[Int] = []
    var count = [0, 0, 0]
    
    for i in 0...answers.count-1 {
        if answers[i] == one[i%one.count]{
            count[0] += 1
        }
        if answers[i] == two[i%two.count]{
            count[1] += 1
        }
        if answers[i] == three[i%three.count]{
            count[2] += 1
        }
    }
    
    let max = count.max()
    for i in 0...count.count-1 {
        if max == count[i] {
            answer.append(i+1)
        }
    }
    return answer
}