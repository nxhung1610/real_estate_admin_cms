
WORKDIR=$PWD
# cd $WORKDIR/modules

cd $WORKDIR && flutter pub get
cd $WORKDIR/feature/common && flutter pub get
cd $WORKDIR/feature/app && flutter pub get
cd $WORKDIR/feature/auth && flutter pub get
cd $WORKDIR/feature/home && flutter pub get