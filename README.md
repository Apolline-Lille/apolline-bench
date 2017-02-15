# apolline-bench

## Instructions

An online workbench for manipulating air quality reports


You first need to clone the repository:

```bash
git clone https://github.com/Apolline-Lille/apolline-bench.git
```

Then， run the Dockerfile:
```bash
sudo docker build -t [name] .
```
It will create a container. Run the container with:
```bash
sudo docker run -i -t -p 8888:8888 [name]
```
Final, you can login with the token marked.