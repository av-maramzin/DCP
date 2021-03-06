#!/bin/bash

# testing parameters
declare -a DEPTHS=("5"
                   "7"
                   "10")

declare -a RUNS=("15"
                 "20"
                 "25"
                 "30"
                 "50"
                 "75"
                 "100"
                 "125"
                 "150"
                 "175"
                 "200"
                 "225"
                 "250")

# write file header
echo >> run.out

for ((k=0;k<${#DEPTHS[@]};++k)); do

    echo "DEPTH=${DEPTHS[k]}" >>  run.out

    # run original version
    echo >> run.out
    echo "original" >> run.out
    echo "runs:real1:user1:sys1:real2:user2:sys2:real3:user3:sys3:" >> run.out

    for ((i=0;i<${#RUNS[@]};++i)); do
        echo "=> Running ${RUNS[i]} runs"
        echo -n "${RUNS[i]}:" >>  run.out

        for ((j=0;j<3;++j)); do
            echo "=> ${RUNS[i]}#${j}"
            /usr/bin/time -f "%e:%U:%S" -o tmp.out ./build/benchmarks/sodden/olden/health/original/health_original ${DEPTHS[k]} ${RUNS[i]} 4
            cat tmp.out | tr -d '\n' >>  run.out
            echo -n ":" >>  run.out
        done
        echo >> run.out
        rm -rf tmp.out
    done

    # run sequential unbalanced version
    echo >> run.out
    echo "sequential unbalanced" >> run.out
    echo "runs:real1:user1:sys1:real2:user2:sys2:real3:user3:sys3:" >> run.out

    for ((i=0;i<${#RUNS[@]};++i)); do
        echo "=> Running ${RUNS[i]} runs"
        echo -n "${RUNS[i]}:" >>  run.out

        for ((j=0;j<3;++j)); do
            echo "=> ${RUNS[i]}#${j}"
            /usr/bin/time -f "%e:%U:%S" -o tmp.out ./build/benchmarks/sodden/olden/health/abstract/health_abstract ${DEPTHS[k]} ${RUNS[i]} 4 0 0
            cat tmp.out | tr -d '\n' >>  run.out
            echo -n ":" >>  run.out
        done
        echo >> run.out
        rm -rf tmp.out
    done

    # run parallel unbalanced version
    echo >> run.out
    echo "parallel unbalanced" >> run.out
    echo "runs:real1:user1:sys1:real2:user2:sys2:real3:user3:sys3:" >> run.out

    for ((i=0;i<${#RUNS[@]};++i)); do
        echo "=> Running ${RUNS[i]} runs"
        echo -n "${RUNS[i]}:" >>  run.out

        for ((j=0;j<3;++j)); do
            echo "=> ${RUNS[i]}#${j}"
            /usr/bin/time -f "%e:%U:%S" -o tmp.out ./build/benchmarks/sodden/olden/health/abstract/health_abstract ${DEPTHS[k]} ${RUNS[i]} 4 1 0
            cat tmp.out | tr -d '\n' >>  run.out
            echo -n ":" >>  run.out
        done
        echo >> run.out
        rm -rf tmp.out
    done

    # run sequential balanced version
    echo >> run.out
    echo "sequential balanced" >> run.out
    echo "runs:real1:user1:sys1:real2:user2:sys2:real3:user3:sys3:" >> run.out

    for ((i=0;i<${#RUNS[@]};++i)); do
        echo "=> Running ${RUNS[i]} runs"
        echo -n "${RUNS[i]}:" >>  run.out

        for ((j=0;j<3;++j)); do
            echo "=> ${RUNS[i]}#${j}"
            /usr/bin/time -f "%e:%U:%S" -o tmp.out ./build/benchmarks/sodden/olden/health/abstract/health_abstract ${DEPTHS[k]} ${RUNS[i]} 4 0 1
            cat tmp.out | tr -d '\n' >>  run.out
            echo -n ":" >>  run.out
        done
        echo >> run.out
        rm -rf tmp.out
    done

    # run parallel balanced version
    echo >> run.out
    echo "parallel balanced" >> run.out
    echo "runs:real1:user1:sys1:real2:user2:sys2:real3:user3:sys3:" >> run.out

    for ((i=0;i<${#RUNS[@]};++i)); do
        echo "=> Running ${RUNS[i]} runs"
        echo -n "${RUNS[i]}:" >>  run.out

        for ((j=0;j<3;++j)); do
            echo "=> ${RUNS[i]}#${j}"
            /usr/bin/time -f "%e:%U:%S" -o tmp.out ./build/benchmarks/sodden/olden/health/abstract/health_abstract ${DEPTHS[k]} ${RUNS[i]} 4 1 1
            cat tmp.out | tr -d '\n' >>  run.out
            echo -n ":" >>  run.out
        done
        echo >> run.out
        rm -rf tmp.out
    done

    echo >> run.out

done
