//
//  MergeSort.swift
//  
//
//  Created by SAURABH MISHRA on 23/01/20.
//
/* Merge Sort */


func mergeSort(arr:[Int])->[Int]{
    
    guard arr.count>1 else{ return arr}
    var mid = arr.count/2
    var leftsort = mergeSort(arr: Array(arr[0..<mid]))
    var rightsort = mergeSort(arr: Array(arr[mid...arr.count-1]))
    return merge(left: leftsort, right: rightsort)
}


func merge (left:[Int],right:[Int])->[Int]{
    
    var leftIdx = 0
    var rightIdx = 0
    var sorted = [Int]()
    
    while left.count>leftIdx && right.count>rightIdx {
        
        if left[leftIdx] < right[rightIdx] {
            sorted.append(left[leftIdx])
            leftIdx += 1
        }else if left[leftIdx] > right[rightIdx] {
            sorted.append(right[rightIdx])
            rightIdx += 1
        }else{
            sorted.append(left[leftIdx])
            leftIdx += 1
            sorted.append(right[rightIdx])
            rightIdx += 1
        }
        
    }
    
    while left.count > leftIdx {
        sorted.append(left[leftIdx])
        leftIdx += 1
    }
    while right.count > rightIdx {
        sorted.append(right[rightIdx])
        rightIdx += 1
    }
    
    return sorted
}

print(mergeSort(arr: [56,4,7,2,6,0,3,6,23,9,23]))

///Result :  [0, 2, 3, 4, 6, 6, 7, 9, 23, 23, 56]

