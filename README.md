My test:

rawData <- matrix(c(2,2,3,2), 2,2)

> rawData
     [,1] [,2]
[1,]    2    3
[2,]    2    2

> my_matrix <- makeCacheMatrix(rawData)

> my_inverse <- cacheSolve(my_matrix)

> my_inverse
     [,1] [,2]
[1,]   -1  1.5
[2,]    1 -1.0

> my_inverse <- cacheSolve(my_matrix)

getting cached data

> rawData <- matrix(c(2,3,1,2), 2,2)

> my_matrix <- makeCacheMatrix(rawData)

> my_inverse <- cacheSolve(my_matrix)

> my_inverse
     [,1] [,2]
[1,]    2   -1
[2,]   -3    2

> my_inverse <- cacheSolve(my_matrix)

getting cached data
