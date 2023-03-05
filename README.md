# LLaMA Web App
Gradio web interface to interact with LLaMA

<p align="center">
<img width="650" alt="Whatsapp ChatGPT" src="https://raw.githubusercontent.com/andrewssobral/llama-webapp/main/images/screenshot.png">
</p>

This is a fork of the original [LLaMA's github repository](https://github.com/facebookresearch/llama).

### How to use

```bash

git clone https://github.com/andrewssobral/llama-webapp.git
cd llama-webapp

python3 -m venv llama_env
source llama_env/bin/activate

python -m pip install --upgrade pip

python -m pip install wheel
python setup.py bdist_wheel

pip install -r requirements.txt
pip install -e .

python -m pip install gradio

torchrun --nproc_per_node $MP webapp.py
```

You should have something like
```
(llama_env) root@3a4d95662bd3:/opt/llama_test/llama# torchrun --nproc_per_node $MP webapp.py
> initializing model parallel with size 1
> initializing ddp with size 1
> initializing pipeline with size 1
Loading
Loaded in 7.27 seconds
Running on local URL:  http://127.0.0.1:7860
Running on public URL: https://c0b1356de83e9cc18c.gradio.live

This share link expires in 72 hours. For free permanent hosting and GPU upgrades (NEW!), check out Spaces: https://huggingface.co/spaces
```
