import os
i = 5

s = 'import os\ni = %d\n\ns = %r\n\nif i >= 0:\n    name = chr(83)+chr(117)+chr(108)+chr(108)+chr(121)+chr(95)+str(i)+chr(46)+chr(112)+chr(121)\n    f = open(name, chr(119))\n    f.write(s %% (i - 1, s))\n    f.close()\n    os.system(chr(112)+chr(121)+chr(116)+chr(104)+chr(111)+chr(110)+chr(51)+chr(32)+name)\n'

if i >= 0:
    name = chr(83)+chr(117)+chr(108)+chr(108)+chr(121)+chr(95)+str(i)+chr(46)+chr(112)+chr(121)
    f = open(name, chr(119))
    f.write(s % (i - 1, s))
    f.close()
    os.system(chr(112)+chr(121)+chr(116)+chr(104)+chr(111)+chr(110)+chr(51)+chr(32)+name)
