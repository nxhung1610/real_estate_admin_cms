
WORKDIR=$PWD
# cd $WORKDIR/modules

cd $WORKDIR && flutter pub get
cd $WORKDIR/modules/core && flutter pub get
cd $WORKDIR/modules/app && flutter pub get
cd $WORKDIR/modules/auth && flutter pub get
cd $WORKDIR/modules/home && flutter pub get