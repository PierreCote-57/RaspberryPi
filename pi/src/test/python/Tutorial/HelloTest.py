import unittest
import colorsys

# from pi import LocalHost


class SimpleTestCase(unittest.TestCase):
    def setUp(self):
        """Call before every test case."""

    # 		print("setUp")

    def tearDown(self):
        """Call after every test case."""

    # 		print("teadDown")

    def testA(self):
        """Test case A. note that all test method names must begin with 'test.'"""
        assert 543 == 543, "bar() not calculating values correctly"

    def test1(self):
        # 		env = LocalHost()
        print("test1")
        assert 1 == 1

    def test2(self):
        print(dir(self))


if __name__ == "__main__":
    unittest.main()  # run all tests
