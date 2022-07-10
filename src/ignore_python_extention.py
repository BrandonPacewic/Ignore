#! /usr/bin/python3

ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

def main():
    with open('.gitignore', 'w') as file:
        file.write('.gitignore\n')
        file.writelines([f'{x}.cpp\n' for x in ALPHABET])

if __name__ == '__main__':
    main()