import random

def player():
    choices = ["rock", "paper", "scissors"]
    choice = input("Rock, paper or scissors?: ")

    if choice not in choices:
        print("Please enter 'rock', 'paper' or 'scissors'")
        player()
    return choice

def computer_choice():
    choice = random.choice(['rock','paper','scissors'])
    return choice

def who_won(player_choice,computer_choice):
    if player_choice == computer_choice:
        print(f"Both players chose {player_choice}")
    elif (player_choice == 'rock' and computer_choice == 'scissors') or \
    (player_choice == 'scissors' and computer_choice == 'paper') or \
    (player_choice == 'paper' and computer_choice == 'rock'):
     print(f"{player_choice} beats {computer_choice}. You win")
    else:
        print(f"{computer_choice} beats {player_choice}. You lose")

while True:
    player_choice = player()
    computer_choice = computer_choice()
    print(f'Player chose {player_choice}, computer chose {computer_choice}')
    who_won(player_choice, computer_choice)
    again = input("Do you want to play again? Y/N: ")
    if again.lower != "y":
        break