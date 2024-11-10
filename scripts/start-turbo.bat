set PATH=%PATH%;C:\Program Files\NVIDIA GPU Computing Toolkit\cudnn-windows-x86_64-8.9.7.29_cuda12-archive\bin
set PATH=%PATH%;C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v12.6\bin

cd ..
call .venv\Scripts\activate

python whisper_online_server.py --host 0.0.0.0 --port 43007 --task transcribe --model faster-whisper-large-v3-turbo-ct2 --language en --backend faster-whisper --min-chunk-size 1

deactivate
