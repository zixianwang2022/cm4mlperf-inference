set -e
export INFERENCE_RESULTS_REPO_OWNER=${INFERENCE_RESULTS_REPO_OWNER:-mlcommons}
export INFERENCE_RESULTS_REPO_BRANCH=mlperf-inference-results-scc24 
export INFERENCE_RESULTS_REPO_NAME=cm4mlperf-inference
export INFERENCE_RESULTS_VERSION=v4.1

if [ ! -d docs ]; then
    git clone https://github.com/GATEOverflow/inference_results_visualization_template.git docs
    test $? -eq 0 || exit $?
fi
cp docs/docinit.sh .
bash docinit.sh
