var line : String?
var array : [String] = []
var i = 1
var sorted = 0

repeat {
    //print("Enter word: ", terminator:"")
    line = readLine()
    if line != nil {
        array.append(line!)
    }
} while line != nil
print("")

print("Unsorted: \(array)")

func swap(integers: inout[String], first: Int, second: Int) {
    let tempvar = integers[second]
    integers[second] = integers[first]
    integers[first] = tempvar
}

if array.count == 1 {
    print("Sorted: \(array)")
} else { while i < array.count {
             if array[i-1] > array[i] {
                 swap(integers: &array, first: i-1, second: i)
                 i = 0
             }
             i += 1
         }
         print("Sorted: \(array)")
}
