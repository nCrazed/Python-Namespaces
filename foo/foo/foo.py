def load_plugin(name):
    try:
        __import__('foo.plugins.{}'.format(name), fromlist=[name])
    except ImportError as e:
        print(e)
