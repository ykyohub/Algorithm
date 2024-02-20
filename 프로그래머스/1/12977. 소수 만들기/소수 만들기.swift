func isPrime(_ n: Int) -> Bool {
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true
}

func solution(_ nums:[Int]) -> Int {
    var answer = 0

    for i in 0...nums.count - 3 {
        let first = nums[i]
        for j in i+1...nums.count - 2 {
            let second = nums[j]
            for k in j+1...nums.count - 1 {
                let third = nums[k]
                if isPrime(first + second + third) {
                    answer += 1
                }
            }
        }
    }
    return answer
}