class Unicorn(object):
    def __init__(self, name, color, age):
        self.name = name
        self.color = color
        self.age = age
    
    def __str__(self):
        return "{} is a {} unicorn, {} years old.".format(self.name, self.color, self.age)
