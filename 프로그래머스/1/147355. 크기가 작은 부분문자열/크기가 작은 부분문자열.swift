import Foundation

func solution(_ t: String, _ p: String) -> Int {
    let tLength = t.count
    let pLength = p.count
    var count = 0
    
    for i in 0...(tLength - pLength) {
        let startIndex = t.index(t.startIndex, offsetBy: i)
        let endIndex = t.index(startIndex, offsetBy: pLength)
        let temp = String(t[startIndex..<endIndex])
        
        if temp <= p{
                count += 1
        }
    }
    return count
}