import pytest

@pytest.fixture(scope="package")
def volume():
    return 70

@pytest.fixture(scope="function")
def norbert():
    return 2228