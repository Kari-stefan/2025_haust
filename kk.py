import string
import time

# --- Configuration ---
charset = string.ascii_lowercase + string.digits  # characters to guess from

# Ask for password
password = input("Enter a 5-character password: ")

# Ensure password is exactly 5 characters
while len(password) != 5:
    print("Password must be exactly 5 characters.")
    password = input("Enter a 5-character password: ")

guessed = ["_"] * 5  # progress display
attempts = 0

print("\nGuessing...\n")
start_time = time.time()

# Guess each character
for pos in range(5):
    for ch in charset:
        attempts += 1
        print("Trying:", "".join(guessed[:pos]) + ch + "".join(guessed[pos+1:]), end="\r")
        if ch == password[pos]:
            guessed[pos] = ch
            print("Found:", "".join(guessed))
            break

end_time = time.time()
elapsed = round(end_time - start_time, 2)

print("\nPassword guessed! -->", "".join(guessed))
print("Attempts:", attempts)
print("Time taken:", elapsed, "seconds")
