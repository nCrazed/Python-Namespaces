from setuptools import setup
setup(name='foo-bar',
      packages=['foo.plugins'],
      namespace_packages=['foo'],
      install_requires=[
          'foo',
          ]
      )
