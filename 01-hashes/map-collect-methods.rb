

#map and collect are used with a collection of items. 

#if you have a collection of items and you want to do certain operations on each item in the collection, then you use map or collect. 

# the result value will be an array

#in the result array each value will correspond to the input collection. 


a = [1,2,3,4,5]
a.map {|x| x*x}



#map method will take each item from the collection one by one, refer to it as x, and execute this line of code and return it as an result array. 

# in the result array, each element wll correspond