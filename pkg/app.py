try:
    from ._speedups import Speedy
except ImportError:
    from ._slow import Speedy

def Pkg(object):
    pass
