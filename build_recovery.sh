echo "--->>> Setting up env.."
. build/envsetup.sh
echo "--->>> Setting up VARIABLES"
export PATH=$PATH:~/android/system/out/host/linux-x86/bin/
echo "--->>> lunch x10"
lunch full_es209ra-eng
echo "--->>> starting to make recoveryimage"
make -j8 recoveryimage
