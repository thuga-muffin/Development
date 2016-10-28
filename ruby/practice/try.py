try:
    text = input('Enter something: ')
    print text
except EOFError:
    print('\nEOFError')

=> Enter something: #cannot enter anything to var "text"
=> EOFError
=> [Finished]