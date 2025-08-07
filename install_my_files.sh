#!/bin/bash

echo "🛠 Creating model folders..."
mkdir -p /workspace/ComfyUI/models/checkpoints
mkdir -p /workspace/ComfyUI/models/loras

echo "📥 Downloading base models..."
# AIIM Realism
wget -O /workspace/ComfyUI/models/checkpoints/AIIM_Realism.safetensors https://huggingface.co/kingcashflow/modelcheckpoints/resolve/main/AIIM_Realism.safetensors

# AIIM Realism FAST
wget -O /workspace/ComfyUI/models/checkpoints/AIIM_Realism_FAST.safetensors https://huggingface.co/kingcashflow/modelcheckpoints/resolve/main/AIIM_Realism_FAST.safetensors

# Juggernaut XI (SDXL)
wget --content-disposition -P /workspace/ComfyUI/models/checkpoints/ "https://civitai.com/api/download/models/782002?token=3acdfc9715cdb424e1474dea73e648f6"

# URPM PonyXL Hybrid
wget --content-disposition -P /workspace/ComfyUI/models/checkpoints/ "https://civitai.com/api/download/models/919063?token=3acdfc9715cdb424e1474dea73e648f6"

echo "📥 Downloading LoRAs..."
# epiCRealism (SDXL LoRA)
wget --content-disposition -P /workspace/ComfyUI/models/loras/ "https://civitai.com/api/download/models/25694?token=3acdfc9715cdb424e1474dea73e648f6"

# epiCRealism XL (SDXL LoRA)
wget --content-disposition -P /workspace/ComfyUI/models/loras/ "https://civitai.com/api/download/models/277058?token=3acdfc9715cdb424e1474dea73e648f6"

echo "✅ All files downloaded and ready!"
