import pkg
import unittest

class PkgTestCase(unittest.TestCase):
    def test_version(self):
        self.assertEqual(pkg.__version__, '0.1.0')

    def test_speedy(self):
        self.assertTrue(pkg.Speedy().__doc__ in ("I'm fast", "I'm slow"))
