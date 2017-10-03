const cardCount = (cardString) => {
  
  if (cardString.length <= 52 && !isCheating(cardString.split(""))){
    const cardArray = cardString.split("")
    const countArray = checkEachCard(cardArray)
    return sum(countArray)
  } 
  return false
}

const checkEachCard = cardArray => cardArray.map(eachCard => {
  if (["2", "3", "4", "5", "6"].includes(eachCard)) { 
    return 1
  } else if (["T", "J", "Q", "K", "A"].includes(eachCard)) {
    return -1
  } else {
    return 0
  }
})
const sum = array => array.reduce((a,b) => {return a + b}, 0 )

const isCheating = array => {
  let count = {}
  let cheating = false
  
  array.forEach(eachCard => {
    
    if (count[eachCard]) { 
      count[eachCard]++ 
    } else {
      count[eachCard] = 1
    }

    if (count[eachCard] > 4) { cheating = true }
  })

  return cheating
}


console.log(cardCount('KKT2KKK'));
