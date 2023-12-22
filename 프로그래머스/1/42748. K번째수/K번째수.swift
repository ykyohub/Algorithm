import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    for i in 0..<commands.count {
        var arr: [Int] = []
        for j in (commands[i][0]-1)...(commands[i][1]-1){
            arr.append(array[j])
        }
        arr.sort()
        result.append(arr[commands[i][2]-1])
    }
    return result
}