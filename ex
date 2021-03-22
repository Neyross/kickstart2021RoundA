#!/usr/bin/env python3

import sys

def main():
    nb = int(input())
    res = []
    for i in range(0, nb):
        points = 0
        n = input()
        string = input()
        nk = n.split()
        it = int(int(nk[0]) / 2)
        for x in range(0, it):
            if string[x] != string[(len(string) - 1) - x]:
                points += 1
        if points == int(nk[1]):
            res.append(0)
        if points < int(nk[1]):
            res.append(int(nk[1]) - points)
        if points > int (nk[1]):
            res.append(points - int(nk[1]))

    for i in range(0, len(res)):
        print("Case #%d: %d" %(i + 1, res[i]))

main()