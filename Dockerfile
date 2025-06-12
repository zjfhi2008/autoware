# 读取隐藏的凭证文件
RUN if [ -f .github-secrets ]; then \
      source .github-secrets; \
      echo "$GITHUB_TOKEN" | docker login ghcr.io -u $GITHUB_USER --password-stdin; \
      rm -f .github-secrets; \
    fi
FROM ghcr.io/autowarefoundation/autoware-universe:latest-cuda
