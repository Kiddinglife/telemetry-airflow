#!/bin/bash

# We use jupyter by default, but here we want to use python
unset PYSPARK_DRIVER_PYTHON

# Clone, install, and run
git clone https://github.com/mozilla/python_etl.git
cd python_etl
pip install .
python setup.py bdist_egg
spark-submit scheduling/pulse.py
