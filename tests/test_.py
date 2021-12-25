"""code testing"""
import pytest
import sys
import pathlib

sys.path.append(str(pathlib.Path(__file__).parent.parent.joinpath("./src")))
from lib import lib


def test_example():
    """example test"""
    assert lib.run() is None
