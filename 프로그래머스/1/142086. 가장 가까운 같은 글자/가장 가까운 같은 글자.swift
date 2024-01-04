import Foundation

func solution(_ s:String) -> [Int] {
    var dict = [String: Int]()
    var arr = s.map{String($0)}
    var result = [Int]()
    for i in 0..<arr.count {
        if dict[arr[i]] == nil {
            dict[arr[i]] = i
            result.append(-1)
            continue
        }
        var idx = dict[arr[i]]!
        result.append(i - idx)
        dict[arr[i]] = i
    }
    return result
}