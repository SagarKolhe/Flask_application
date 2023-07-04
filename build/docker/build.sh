# installing build dependencies
docker_image_name=${1}
tag=${2}

current_folder=${ROOT_FOLDER}
cmd="docker build -t ${docker_image_name}:${tag} -f ${current_folder}/build/docker/Dockerfile ."
echo "Building the docker image"
echo "Docker build command -> $cmd"
exec $cmd
