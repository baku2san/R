forDivision <- 100
divisionSize <- 10000/forDivision
for (num in 1:forDivision) {
  tList <- list(((divisionSize*(num - 1)) + 1):(divisionSize * num))
  lists <- append(lists, tList)
}
class(lists)
typeof(lists)
for (count in lists ) {
  str(count)
}