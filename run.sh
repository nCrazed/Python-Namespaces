echo "Uninstaling packages"
pip uninstall foo foo-bar -y

echo "Installing foo"
cd foo
python setup.py sdist
pip install dist/foo-0.0.0.tar.gz

echo "Installing foo-bar"
cd ../foo-bar
python setup.py sdist
pip install dist/foo-bar-0.0.0.tar.gz

echo "Running the test"
cd ../foo-local

python test.py
cd ..
