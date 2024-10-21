This experiment is generated using the [MLCommons Collective Mind automation framework (CM)](https://github.com/mlcommons/cm4mlops).

*Check [CM MLPerf docs](https://docs.mlcommons.org/inference) for more details.*

## Host platform

* OS version: Linux-6.1.110-1.el9.elrepo.x86_64-x86_64-with-glibc2.29
* CPU version: x86_64
* Python version: 3.8.10 (default, Sep 11 2024, 16:02:53) 
[GCC 9.4.0]
* MLCommons CM version: 3.2.4

## CM Run Command

See [CM installation guide](https://docs.mlcommons.org/inference/install/).

```bash
pip install -U cmind

cm rm cache -f

cm pull repo mlcommons@cm4mlops --checkout=114709c8f6dbefa9ce5f8a599d55b349b5464bca

cm run script \
	--tags=run-mlperf,inference,_r4.1-dev \
	--model=bert-99 \
	--implementation=nvidia \
	--framework=tensorrt \
	--category=edge \
	--scenario=Offline \
	--execution_mode=valid \
	--device=cuda \
	--quiet
```
*Note that if you want to use the [latest automation recipes](https://docs.mlcommons.org/inference) for MLPerf (CM scripts),
 you should simply reload mlcommons@cm4mlops without checkout and clean CM cache as follows:*

```bash
cm rm repo mlcommons@cm4mlops
cm pull repo mlcommons@cm4mlops
cm rm cache -f

```

## Results

Platform: b2b4f72c06b8-nvidia-gpu-TensorRT-default_config

Model Precision: int8

### Accuracy Results 
`F1`: `90.43412`, Required accuracy for closed division `>= 89.96526`

### Performance Results 
`Samples per second`: `3470.62`
