# Python namespaces, how do they work?

## Scenario 

Two packages, `foo` and `foo-bar`, are sharing the namespaces `foo` and
`foo.plugins`. When these packages are installed via pip, calls to 
`foo.load_plugin()` can load any module from `foo.plugins` namespace present 
in the source of either of the packages.
But it is unable to find any modules in the local path that mimics the namespace structure even when `__import__().declare_namespace()` is used. 

Why is that? And is there any way to make the above scenario to work without 
building and installing `foo-local` as a package?

## Requirements

 * Python 3.4
 * virtualenv
 * pip

## How to reproduce

```bash
git clone git@github.com:nCrazed/Python-Namespaces.git
cd Python-Namespaces
virtualenv-3.4 VENV
source VENV/bin/activate
./run.sh
```
