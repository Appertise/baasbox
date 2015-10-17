# baasbox
Baasbox Docker image

To run this image with persistent data, use this command:

```Shelll

docker run -d -v <data_path>:/var/data/baasbox -p 9000:9000 appertise/baasbox

```

Replate `<data_path>` with a path of your choice.
