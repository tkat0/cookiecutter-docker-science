{% if cookiecutter.use_nvidia_docker == 'yes' -%}
FROM nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04
{% else %}
FROM ubuntu:16.04
{%- endif %}

RUN apt-get update && apt-get install -y \
  gosu \
  git \
  python3.5 \
  python3-pip \
  python3-dev

RUN pip3 install --upgrade pip

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

WORKDIR /work

COPY ./docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
