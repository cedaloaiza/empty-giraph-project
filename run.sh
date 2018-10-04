
rm -R degrees
mvn package

giraph target/simple-giraph-project-1.0-SNAPSHOT.jar  \
ru.simple.giraph.project.org.EmptyComputation \
-vif org.apache.giraph.io.formats.IntIntNullTextVertexInputFormat \
-vip data/simple_int \
-vof org.apache.giraph.io.formats.IdWithValueTextOutputFormat \
-mc ru.simple.giraph.project.org.EmptyMasterCompute \
-op degrees \
-ca giraph.SplitMasterWorker=false \
-ca giraph.logLevel=ERROR \
-w 1




