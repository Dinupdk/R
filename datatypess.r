##################### Datatypes in R  ##################################
# 1.Numeric            2. Character   3.logic      4.complex           
#  i.Integer                          boolean       i.real
#  ii.decimal                                       ii.Imagine        

#1.Numerical
n<-5.5
class(n)
a<-10
class(a)
#2.Character
c<-"Srting"
class(c)

#3.Logic
l<-TRUE
class(l)
#4.Complex
c<-5+2i
class(c)




#####################  Assigining the variables #############################
x<-25
y=20
print(x+y)
paste(x)

# multiple variable
var1<-var2<-var3<-200
print(var1+var2+var3)
# Difference types of variables
myVar<-MYVAR<-MyVar<-my_var<-My_Var<-MY_VAR<-20
print(myVar+MYVAR+MyVar+my_var+My_Var+MY_VAR)
################### scope of variables(global,local)

x=10
my_global=function(){
    print(x)
}
my_local=function(){
    x=20
    print(x)
}
print(x)
my_global()
my_local()

###############################################
#############         operators in r######################################################
############### 1. Arithmetic operators
# ##############2. Comparison operators
################ 3. Logical operators
################# 4. Assignment operators
##################### MISCELLANEOUS OPERATORS %%,%/%, matrix
# 5. Relational operators
# 6. Bitwise operators
# 7. Special operators
# 8. Conditional operators


# 1. Arithmetic operators
# +, -, *, /, ^, %/%, %%
a<-4
b<-3
print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a^b)
print(a%/%b)
print(a%%b)

# outputs
# [1] 7
# [1] 1
# [1] 12
# [1] 1.333333
# [1] 64
# [1] 1
# [1] 1


# 2. Comparison operators
# ==, !=, >, <, >=, <=
a<-4
b<-3
print(a==b)
print(a!=b)
print(a>b)
print(a<b)
print(a>=b)
print(a<=b)

# outputs
# [1] FALSE
# [1] TRUE
# [1] TRUE
# [1] FALSE
# [1] TRUE
# [1] FALSE


# 3. Logical operators
# &&, ||, !
a<-TRUE
b<-FALSE
print(a&&b)
print(a||b)
print(!a)
# outputs
# [1] FALSE
# [1] TRUE
# [1] FALSE


# 4. Assignment operators
# <-, =, +=, -=, *=, /=, %=, ^=, %/%=
a<-5
b<-3
print(a<-b)  # <- is used for assignment and returns the value assigned
print(a)  # prints the value of a
#print.default(a=b)  # = is used for assignment and returns the value assigned
print(a+b)
print(a=-b)





######################    Functions       #######################
########## user define functions
add<-function(x,y){
    return(x+y)
}
print(add(5,3))

addd<-function(x,y){
    print(x+y)
}
addd(10,100)

########  built in funtions
print(sum(10,20,30))
print(sub(10,20))
print(mean(10,20,30))


############ anonymous functions
sapply(c(1,2,3),function(x){
    return(x^2)
})

########## Recursive function
my_recursive<-function(x,y){
    print(x+y)
    my_recursive(x-1,y-1)
}
my_recursive(10,20)




#################### control structures ###########################################
######### ###########conditional statements ##########
#1.if
#2.else if
#3.else

############  if 
x <- 10

if (x > 5) {
  print("x is greater than 5")
}



#############  if...else
x <- 3

if (x > 5) {
  print("x is greater than 5")
} else {
  print("x is not greater than 5")
}

###########   if..else if...else
x <- 5

if (x > 5) {
  print("x is greater than 5")
} else if (x == 5) {
  print("x is equal to 5")
} else {
  print("x is less than 5")
}

################ nested if
x <- 7

if (x > 5) {
  print("x is greater than 5")
  
  if (x > 10) {
    print("x is also greater than 10")
  } else {
    print("x is not greater than 10")
  }
} else {
  print("x is not greater than 5")
}

############### ifelse()
x <- c(1, 2, 3, 4, 5)

result <- ifelse(x > 3, "Greater than 3", "Not greater than 3")
print(result)

############ conditions in functions
check_number <- function(x) {
  if (x > 0) {
    return("Positive")
  } else if (x < 0) {
    return("Negative")
  } else {
    return("Zero")
  }
}

print(check_number(10))  # Output: "Positive"
print(check_number(-5))  # Output: "Negative"
print(check_number(0))   # Output: "Zero"

############## looping statements #####
#1.for 
#2.while
#3.repeat

###### #########for 
# Using a for loop to iterate over a vector
numbers <- c(1, 2, 3, 4, 5)
#class(numbers)

for (num in numbers) {
  print(num)
}
# Using a for loop with a sequence
for (i in 1:5) {
  print(i^2)  # Print the square of each number
}

###############2.while

# Using a while loop to count down from 5
count <- 5

while (count > 0) {
  print(count)
  count <- count - 1  # Decrement count
}


##############3.repeat
# Using a repeat loop to print numbers until a condition is met
count <- 1

repeat {
  print(count)
  count <- count + 1
  if (count > 5) {
    break  # Exit the loop when count is greater than 5
  }
  
}

############## nested loop
# Nested for loops to create a multiplication table
for (i in 1:3) {
  for (j in 1:10) {
    print(paste(i, "x", j, "=", i * j))
  }
}

####### loop control break next
# Using next to skip even numbers
for (i in 1:10) {
  if (i %% 2 == 0) {
    next  # Skip even numbers
  }

  print(i)  # Print only odd numbers
}


########### switch statements

choice <- "B"

result <- switch(choice,
                 "A" = "You chose A",
                 "B" = "You chose B",
                 "C" = "You chose C",
                 "Unknown choice")

print(result)  # Output: "You chose B"


###### break
for (i in 1:10) {
  if (i == 5) {
    break  # Exit the loop when i is 5
  }
  print(i)  # This will print numbers 1 to 4
}

### next
for (i in 1:10) {
  if (i %% 2 == 0) {
    next  # Skip even numbers
  }
  print(i)  # This will print only odd numbers
}


for (i in 1:10) {
  if (i == 8) {
    break  # Exit the loop when i is 8
  }
  if (i %% 2 == 0) {
    next  # Skip even numbers
  }
  print(i)  # This will print odd numbers until i is 8
}





#####################