This experiment is generated using the [MLCommons Collective Mind automation framework (CM)](https://github.com/mlcommons/cm4mlops).

*Check [CM MLPerf docs](https://docs.mlcommons.org/inference) for more details.*

## Host platform

* OS version: Linux-5.14.0-427.42.1.el9_4.x86_64-x86_64-with-glibc2.34
* CPU version: x86_64
* Python version: 3.11.7 (main, Dec 15 2023, 18:12:31) [GCC 11.2.0]
* MLCommons CM version: 3.1.0

## CM Run Command

See [CM installation guide](https://docs.mlcommons.org/inference/install/).

```bash
pip install -U cmind

cm rm cache -f

cm pull repo mlcommons@cm4mlops --checkout=e8235832b1ca225f65ecc8272c597d5c1a112d82

cm run script \
	--tags=run-mlperf,inference,_r4.1-dev,_short,_scc24-base \
	--model=sdxl \
	--implementation=reference \
	--framework=pytorch \
	--category=datacenter \
	--scenario=Offline \
	--execution_mode=test \
	--device=rocm \
	--quiet \
	--precision=float16 \
	--env.CM_GET_PLATFORM_DETAILS=no
```
*Note that if you want to use the [latest automation recipes](https://docs.mlcommons.org/inference) for MLPerf (CM scripts),
 you should simply reload mlcommons@cm4mlops without checkout and clean CM cache as follows:*

```bash
cm rm repo mlcommons@cm4mlops
cm pull repo mlcommons@cm4mlops
cm rm cache -f

```

## Results

Platform: aqua-reference-rocm-pytorch-v2.6.0.dev20241109-scc24-base

Model Precision: fp32

### Accuracy Results 
`CLIP_SCORE`: `15.22786`, Required accuracy for closed division `>= 31.68632` and `<= 31.81332`
`FID_SCORE`: `236.96183`, Required accuracy for closed division `>= 23.01086` and `<= 23.95008`

### Performance Results 
`Samples per second`: `0.209132`
