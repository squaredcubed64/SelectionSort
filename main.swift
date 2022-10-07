

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

// 1.  Edit the file named "main.swift"
// 2.  Within this file, write a program which will sort the array of integers
//     using Selection Sort.
// 3.  The output should be as follows:
//     Pass: <p>, Swaps: <pass swap count>/<total swap count>, Array: [<comma-delimitted array contents>]
//     For example:
//         Pass 0, Swaps: 0/0, Array: [64, 25, 12, 22, 11]
//         Pass 1, Swaps: 1/1, Array: [11, 25, 12, 22, 64]

// Add your code below:

var arr = unsortedIntegers

func swap(arr: inout [Int], index1:Int, index2:Int) {
    let ele1 = arr[index1]
    let ele2 = arr[index2]
    arr[index1] = ele2
    arr[index2] = ele1
}

var totalSwaps = 0

print("Pass: 0, Swaps: 0/0, Array: \(arr)")

for i in 0 ..< arr.count - 1{
    var min = arr[i]
    var minIndex = i
    
    for j in i + 1 ..< arr.count {
        if arr[j] < min {
            min = arr[j]
            minIndex = j
        }
    }

    swap(arr:&arr, index1:i, index2:minIndex)
    totalSwaps += 1
   
    print("Pass: \(i + 1), Swaps: 1/\(totalSwaps), Array: \(arr)")
}
