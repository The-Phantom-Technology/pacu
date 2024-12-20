rm -rf /opt/PHANTX/pacu

cd /opt/PHANTX

git clone https://github.com/RhinoSecurityLabs/pacu
cd /opt/PHANTX/pacu

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cd /opt/PHANTX/pacu

sudo poetry install

cp -Rf pacu /opt/ANDRAX/bin

chmod -R 755 /opt/PHANTX/bin
rm -rf /opt/PHOS/tool/pacu
rm -rf /opt/PHOS/tool/pacu