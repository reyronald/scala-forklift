sbt +publish

destination_folder=../flax/migration_manager/lib/

echo "Copying all *.jar files to $destination_folder"

# Create the destination folder if it doesn't exist
mkdir -p "$destination_folder"

# Find all the .jar files in the nested subdirectories of /lib
find ./lib -name "*.jar" -type f | while read -r jar_file; do
    cp "$jar_file" "$destination_folder"
done

rm -rf ./lib

echo "Done"
