```bash
 docker build -t node-sass .
 docker run --rm -v `pwd`/sass:/work -v `pwd`/dest:/dest node-sass bash -c 'node-sass -r -o /dest ./'
 ```