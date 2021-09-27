mkdir proc_logs

echo "Upgrading pip"
python3 -m pip install --upgrade pip -q

echo "Installing tensorflow-addons"
python3 -m pip install tensorflow-addons==0.14.0 -q

echo "Installing setuptools"
python3 -m pip install -U setuptools -q

echo "Installing pathlib"
python3 -m pip install pathlib absl-py==0.10 -q

echo "Installing tensor2tensor and tensorflow"
python3 -m pip install -U tensor2tensor tensorflow==2.4.0 --no-cache-dir --no-warn-script-location >> proc_logs/pip-install.log