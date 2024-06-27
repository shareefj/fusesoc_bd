## Setup

In my setup, the following runs Vivado through to completion.

```shell
. sourceme
module load xilinx/vivado/2022.1
make pass
```

but running `make fail` or `make fail2` have issues generating the BD.