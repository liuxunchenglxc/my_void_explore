FROM ghcr.io/void-linux/void-glibc:20260701r1

RUN xbps-install -Suy git uv aria2 ffmpeg6 curl && xbps-remove -Oo

RUN curl -fsSL https://deno.land/install.sh | sh

COPY requirements.txt .
RUN uv pip install --system --break-system-packages --no-cache-dir -r requirements.txt

WORKDIR /workspace