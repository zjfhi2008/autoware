# 使用官方轻量级Python镜像（可替换为node:20-alpine等）
FROM python:3.11-slim

# 设置容器内工作目录（可自定义）
WORKDIR /app

# 复制GitHub仓库中的代码到容器（包括requirements.txt）
COPY . .

# 安装依赖（根据项目类型调整命令）
RUN pip install --no-cache-dir -r requirements.txt

# 暴露服务端口（按需修改）
EXPOSE 8000

# 启动应用（替换为项目的启动命令）
CMD ["python", "app.py"]
