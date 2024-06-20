import Foundation

let twoDArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

let flattenedArray = twoDArray.flatMap{$0}
print(flattenedArray)   // [1, 2, 3, 4, 5, 6, 7, 8, 9]
