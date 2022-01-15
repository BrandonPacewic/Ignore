ALPH = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

def main():
    with open('.gitignore', 'w') as file:
        file.write('.gitignore')
        file.writelines([x for x in ALPH])

if __name__ == '__main__':
    main()