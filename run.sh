echo "Uninstaling packages"
pip uninstall foo -y
pip uninstall foo-bar -y

echo "Installing foo"
cd foo
python setup.py install

echo "Installing foo-bar"
cd ../foo-bar
python setup.py install

echo "Running the test"
cd ../foo-local

python test.py
cd ..
