# Ambassador 5xxs

To run this test perform the following, you will need to have [hey](https://github.com/rakyll/hey) installed and available on your PATH.

1. Run `setup.sh` to create the Kind cluster and setup Ambassador and the service
2. Run `port-forward.sh` in a terminal
3. Run `load.sh` in a terminal
4. Run `restart.sh` in a terminal
5. Witness the 503s in the load test report
