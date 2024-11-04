This experiment is generated using the [MLCommons Collective Mind automation framework (CM)](https://github.com/mlcommons/cm4mlops).

*Check [CM MLPerf docs](https://docs.mlcommons.org/inference) for more details.*

## Host platform

* OS version: Linux-6.1.0-11-amd64-x86_64-with-glibc2.29
* CPU version: x86_64
* Python version: 3.8.10 (default, Sep 11 2024, 16:02:53) 
[GCC 9.4.0]
* MLCommons CM version: 3.3.3

## CM Run Command

See [CM installation guide](https://docs.mlcommons.org/inference/install/).

```bash
pip install -U cmind

cm rm cache -f

cm pull repo mlcommons@cm4mlops --checkout=fa46c07b3e162bc193e3fd85ae6ebbfabae75225

cm run script \
	--tags=run-mlperf,inference,_r4.1-dev,_short,_scc24-main \
	--model=sdxl \
	--implementation=nvidia \
	--framework=tensorrt \
	--category=datacenter \
	--scenario=Offline \
	--execution_mode=test \
	--device=cuda \
	--quiet \
	--test_query_count=5040 \
	--adr.nvidia-harness.use_graphs=True \
	--adr.nvidia-harness.gpu_inference_streams=2 \
	--adr.nvidia-harness.gpu_copy_streams=2
```
*Note that if you want to use the [latest automation recipes](https://docs.mlcommons.org/inference) for MLPerf (CM scripts),
 you should simply reload mlcommons@cm4mlops without checkout and clean CM cache as follows:*

```bash
cm rm repo mlcommons@cm4mlops
cm pull repo mlcommons@cm4mlops
cm rm cache -f

```

## Results

Platform: 9f7dcf9a6c28-nvidia_original-gpu-tensorrt-vdefault-scc24-main

Model Precision: int8

### Accuracy Results 
`CLIP_SCORE`: `16.67928`, Required accuracy for closed division `>= 31.68632` and `<= 31.81332`
`FID_SCORE`: `235.25334`, Required accuracy for closed division `>= 23.01086` and `<= 23.95008`

### Performance Results 
`Samples per second`: `6.6076`
