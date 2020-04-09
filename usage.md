### 1. install conda-build and anaconda-client
`conda install --yes --quiet conda-build anaconda-client -c conda-forge`

### 2. run conda-build
`conda build . -c defaults`

### 3. check if successful
`conda build glibc-conda/conda_build -c defaults --output`

### 4. upload conda package
`anaconda -t ${MY_UPLOAD_KEY} upload -u ${CONDA_USERNAME:-arctern} ${LABEL_OPTION} --force ${LIBARCTERN_FILE}`

such as:
`anaconda -t ar-796806c4-bf76-4cb3-8d46-437292644298 upload -u arctern-dev --label main --force /home/sheep/miniconda3/conda-bld/linux-64/glibc-2.27-0.tar.bz2`