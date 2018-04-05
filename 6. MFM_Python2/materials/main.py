# -*- coding: utf-8 -*-
"""
Created on Wed Apr  4 13:44:20 2018

@author: Rizqi Okta E
"""

import rocket as r

my_rocket = r.Rocket(1,2)
print(my_rocket.y)
my_rocket.move_rocket(y_increment = 2)
print(my_rocket.y)