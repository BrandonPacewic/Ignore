ALPH = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

def main():
    with open('.gitignore', 'w') as file:
        file.write('.gitignore\n')
        file.writelines([f'{x}.cc\n' for x in ALPH])

if __name__ == '__main__':
    main()