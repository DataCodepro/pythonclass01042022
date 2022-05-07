def scoreavg():
    score1 = int(input('Math Score:'))
    score2 = int(input('English Score:'))
    score3 = int(input('Physics Score:'))
    score4 = int(input('Biology Score:'))
    score5 = int(input('Chemistry Score:'))

    average = (score1 + score2 + score3 + score4 + score5)/5


    if average >=70 and average<= 100:
        print(f'Your Average score in 5 subject is {average} and your Grade is A')
    elif average >=60 and average<= 60.99:
        print(f'Your Average score in 5 subject is {average} and your Grade is B')
    elif average >=50 and average<= 50.99:
        print(f'Your Average score in 5 subject is {average} and your Grade is C')
    elif average >=45 and average<= 49.99:
        print(f'Your Average score in 5 subject is {average} and your Grade is D')
    elif average >=40 and average<= 45.99:
        print(f'Your Average score in 5 subject is {average} and your Grade is E')
    else:
        print(f'Your Average score in 5 subject is {average} and your Grade is F')

scoreavg()
        
