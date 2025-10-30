import pytest

@pytest.fixture(scope="package")
def volume():
    return 999999