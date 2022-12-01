from datetime import datetime, timedelta
now = datetime.now()

def get_holiday():
    global now
    holiday = input("Which holiday are you seeking? ")
    if holiday == "New Year's Day":
        return datetime(now.year, 1, 1)
    elif holiday == "Valentine's Day":
        return datetime(now.year, 2, 14)
        return datetime(now.year, 3, 17)
    elif holiday == "April Fool's Day":
        return datetime(now.year, 4, 1)
    elif holiday == "Easter Day":
        return datetime(now.year, 4, 21)
    elif holiday == "Mother's Day":
        return datetime(now.year, 5, 12)
    elif holiday == "Father's Day":
        return datetime(now.year, 6, 16)
    elif holiday == "Halloween Day":
        return datetime(now.year, 10, 31)
    elif holiday == "Christmas Day":
        return datetime(now.year, 12, 25)
    elif holiday == "New Year's Eve Day":
        return datetime(now.year, 12, 31)
    else:
        print("Not a valid holiday. ")
    return holiday

def calculate(holiday, now):
    diff = holiday - now
    if diff.days >= 0:  
        return diff.days
    else:  
        return ((holiday + timedelta(days = 365)) - now).days

hd = get_holiday()
now = datetime.now()
calculation = calculate(hd, now)
print("Days remaining:")
print(calculation)
