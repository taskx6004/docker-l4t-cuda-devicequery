FROM nvcr.io/nvidia/l4t-base:r32.6.1

RUN apt-get update && apt-get install -y --no-install-recommends make g++
COPY ./cuda-samples/Samples/deviceQuery/ /cuda-samples/Samples/deviceQuery
COPY ./cuda-samples/Common/ /cuda-samples/Common

WORKDIR /cuda-samples/Samples/deviceQuery/
RUN make clean && make 

CMD ["/cuda-samples/Samples/deviceQuery/deviceQuery"]