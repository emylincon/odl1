apt update -y && apt upgrade -y
apt install wget -y
path="https://nexus.opendaylight.org/content/repositories/public/org/opendaylight/integration/distribution-karaf/0.4.4-Beryllium-SR4/distribution-karaf-0.4.4-Beryllium-SR4.tar.gz"
wget $path
tar -xvf distribution-karaf-0.4.4-Beryllium-SR4.tar.gz
mv distribution-karaf-0.4.4-Beryllium-SR4 odl
apt install openjdk-8-jdk -y
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
./odl/bin/karaf -of13
feature:install odl-dlux-all odl-l2switch-all odl-mdsal-all
logout
echo "Your odl is ready. . ."
echo "use ./odl/bin/karaf -of13 to startyour odl"
