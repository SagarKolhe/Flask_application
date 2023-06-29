# installing build dependencies

current_folder=${ROOT_FOLDER}/
echo $current_folder
cmd="docker build -t flask_image:1 -f ${current_folder}/build/docker/Dockerfile ."
echo "Building the docker image"
echo "Docker build command -> $cmd"
exec $cmd
