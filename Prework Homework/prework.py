# Question 1
# Write a function to print "hello_USERNAME!" USERNAME is the input of the function. The first line of the code has been defined as below.

#     def hello_name(user_name):
#         .....

def hello_name(user_name):
    print(user_name)

# test hello_name()
hello_name('John')

# Question 2
# Write a python function, first_odds that prints the odd numbers from 1-100 and returns nothing

#     def first_odds():
#         .....

def first_odds():
    for number in range(100):
       if not number%2 == 0:
           print(number) 

#test first_odds()
first_odds()

# Question 3
# Please write a Python function, max_num_in_list to return the max number of a given list. The first line of the code has been defined as below.

#     def max_num_in_list(a_list):
#         # .....

def max_num_in_list(a_list):
    return max(a_list)

#test max_num_in_list(a_list)
maximum = max_num_in_list([9,88,55,809,33,77,99,90])
print("The maximum number in the list is ", maximum)

# Question 4
# Write a function to return if the given year is a leap year. A leap year is divisible by 4, but not divisible by 100, unless it is also divisible by 400. The return should be boolean Type (true/false).

#     def is_leap_year(a_year):
#         .....

def is_leap_year(a_year):
    divisible_by_four = a_year % 4 == 0
    divisible_by_one_hundred = a_year % 100 == 0
    divisible_by_four_hundred = a_year % 400 == 0
    
    return divisible_by_four and not divisible_by_one_hundred or divisible_by_four_hundred

#Test is_leap_year(a_year)
print(2000, is_leap_year(2000))
print(2004, is_leap_year(2004))
print(1900, is_leap_year(1900))
print(1988, is_leap_year(1988))


# Question 5
# Write a function to check to see if all numbers in list are consecutive numbers. For example, [2,3,4,5,6,7] are consecutive numbers, but [1,2,4,5] are not consecutive numbers. The return should be boolean Type.

#     def is_consecutive(a_list):
#         .....
def is_consecutive(a_list):
    for number in a_list[0:-2]:
        try:
            a_list.index(number+1)
        except:
            return False
    return (True)

#test is_consecutive(a_list)
print(is_consecutive([2,3,4,5,6,7]))
print(is_consecutive(([1,2,4,5])))
print(is_consecutive(([2,4,6,8,9])))
print(is_consecutive(([2,3,4,6,8,9])))
print(is_consecutive(list(range(1, 11))))
print(is_consecutive(list(range(1, 111))))
