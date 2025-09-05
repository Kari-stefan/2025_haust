import openai
import os
import sys

openai.api_key = "your-api-key-here"

def ask_openai(prompt):
    response = openai.ChatCompletion.create(
        model="gpt-3.5-turbo", 
        messages=[{"role": "user", "content": prompt}]
    )
    return response.choices[0].message.content.strip()

if __name__ == "__main__":
    user_input = input("Ask something: ")
    answer = ask_openai(user_input)
    print("AI:", answer)