#/bin/bash
for ZT_VERSION in 1.8.1; do
	echo $ZT_VERSION
	docker buildx build --platform=linux/amd64,linux/386,linux/arm/v7,linux/arm64,linux/ppc64le,linux/s390x,linux/mips64le --build-arg VERSION=$ZT_VERSION -t ddandrew/zerotier-moon:$ZT_VERSION -t ghcr.io/d-dandrew/zerotier-moon:$ZT_VERSION . --push
done
