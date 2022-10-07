var strings: [String] = []

while let line = readLine() {
    strings.append(line)
}

func swap(strings: inout [String], index1:Int, index2:Int) {
    let ele1 = strings[index1]
    let ele2 = strings[index2]
    strings[index1] = ele2
    strings[index2] = ele1
}

for i in 0 ..< strings.count - 1 {
    var min = strings[i]
    var minIndex = i
    
    for j in i + 1 ..< strings.count {
        if strings[j] < min {
            min = strings[j]
            minIndex = j
        }
    }

    swap(strings:&strings, index1:i, index2:minIndex)
}

for str in strings {
    print(str)
}
