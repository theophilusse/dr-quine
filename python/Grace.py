# This program writes its own source to Grace_kid.py
OPEN = lambda f: open(f, chr(119))
WRITE = lambda f, d: f.write(d)
CLOSE = lambda f: f.close()

s = '# This program writes its own source to Grace_kid.py\nOPEN = lambda f: open(f, chr(119))\nWRITE = lambda f, d: f.write(d)\nCLOSE = lambda f: f.close()\n\ns = %r\n\nf = OPEN(chr(71)+chr(114)+chr(97)+chr(99)+chr(101)+chr(95)+chr(107)+chr(105)+chr(100)+chr(46)+chr(112)+chr(121))\nWRITE(f, s %% s)\nCLOSE(f)\n'

f = OPEN(chr(71)+chr(114)+chr(97)+chr(99)+chr(101)+chr(95)+chr(107)+chr(105)+chr(100)+chr(46)+chr(112)+chr(121))
WRITE(f, s % s)
CLOSE(f)
