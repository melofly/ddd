import pytest

@pytest.fixture(scope="package")
def volume():
    return 20

@pytest.fixture(scope="function")
def yoyo():
    return 788887