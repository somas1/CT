import random

def menu():
    choices = ["rock", "paper", "scissors"]
    choice = input("Rock, paper or scissors?: ")

    if choice not in choices:
        print("Please enter 'rock', 'paper' or 'scissors'")
        menu()
    return choice