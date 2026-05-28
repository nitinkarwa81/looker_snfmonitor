from hello import greet


def test_default_greet():
    assert greet() == "Hello, World!"


def test_custom_greet():
    assert greet("Claude") == "Hello, Claude!"
