#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jun 20 11:14:55 2019

@author: sordol
"""
#!/usr/bin/python3
import sys




filename = sys.argv[1]


with open(filename) as f: s=f.read()


gens=s.split(' ')


with open('parsed.txt','w') as out:
    for gen in gens:
        if 'x' not in gen and not '|' in gen:
            out.write(gen)
            out.write('\n')
