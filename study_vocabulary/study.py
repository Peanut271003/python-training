import numpy as np

def input_dictionary(n, m):
    a = [[None] * m for _ in range(n)]
    print("---------------Input your list Dictionary---------------")
    for i in range(n):
        print(f"{i} ", end="")
        for j in range(m):
            a[i][j] = input()
    return a


def output_dictionary(a):
    print("---------------Output your list Dictionary---------------")
    n = len(a)
    m = len(a[0])
    for i in range(n):
        print(f"{i}: ", end="")
        for j in range(m):
            print(a[i][j], end="\t\t")
        print()


def random_element(a):
    n = len(a)
    index_element = np.random.randint(n)
    random_element = a[index_element][0]
    return random_element, index_element


def check(a, incorrect_words):
    rd_ele, index_ele = random_element(a)
    print(f"---------------Translate '{rd_ele}' to English:---------------")
    vocab_eng = input()
    if vocab_eng == a[index_ele][1]:
        print("Correct!")
    else:
        print(f"Incorrect. The correct answer is '{a[index_ele][1]}'.")
        incorrect_words.append((a[index_ele][0], a[index_ele][1]))


def main():
    print("---------------Input quantity of Vocab---------------")
    n = int(input())
    m = 2
    tmp = 0
    a = input_dictionary(n, m)
    output_dictionary(a)
    incorrect_words = []
    while True:
        check(a, incorrect_words)
        tmp +=1
        if tmp > 10:
            cont = input("Do you want to check another word? (yes/no): ").lower()
            if cont != 'yes':
                break

    if incorrect_words:
        print("\nIncorrect translations:")
        for word, correct_translation in incorrect_words:
            print(f"{word} -> {correct_translation}")

if __name__ == "__main__":
    main()