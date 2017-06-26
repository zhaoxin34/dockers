FROM centos7-base

WORKDIR /home/chaos

# CMD ["/bin/bash", "-c", "su - chaos"]
#VOLUME ${src_dir}:/home/chaos/src
# 注：运行时需要挂载工程的src目录到src目录下，如docker run -v /Users/zhaoxin/working/life/datatist/datatist-analyzer/datatist-analyzer-js-tracker/src:/home/chaos/src -it datatist-analyzer-gulp

USER chaos
CMD ["/bin/bash"]

# # Set the working directory to /app
# WORKDIR /app
#
# # Copy the current directory contents into the container at /app
# ADD . /app
#
# # Install any needed packages specified in requirements.txt
# RUN pip install -r requirements.txt
#
# # Make port 80 available to the world outside this container
# EXPOSE 80
#
# # Define environment variable
# ENV NAME World
#
# # Run app.py when the container launches
# CMD ["python", "app.py"]
