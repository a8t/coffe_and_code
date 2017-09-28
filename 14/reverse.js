// Part 1
// Given an array of any size of any set of numbers, like this: [5,3,6], find a way to reverse the numbers, ie. [6,3,5]
// Part 2
// Given an array of any size of a set of words, like this: ["foo","bar","baz"], reverse both the order of the words, and the words themselves, ie. ["zab","rab","oof"]
// Part 3
// Given an array of arrays of words, like this: [["foo", "bar"], ["baz", "bat"]], reverse the order of both arrays, and the words within, ie. [["tab","zab"],["rab", "oof"]]

const reverse = (array) => {
    const length = array.length;
    newArray = [];
    for (var i = 0; i < length; i++){
        (newArray.push(array.pop()))
    }
    
    return newArray;
}

const wordsArrayReverse = (array) => {
    return reverse(array).map(
        eachWord => reverse(eachWord.split("")).join("")
    )
}

const arrayOfArraysReverse = (array) => {
    return reverse(array).map(
        eachWordsArray => wordsArrayReverse(eachWordsArray)
    )
}

console.log(reverse([5,3,6,8,3,10,9]))

console.log(wordsArrayReverse(["foo", "bar", "baz"]));

console.log(arrayOfArraysReverse([["foo", "bar"], ["baz", "bat"]]));
