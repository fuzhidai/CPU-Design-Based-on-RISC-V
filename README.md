# 注：
- 主文件为仿真文件 test_cpu_top.v ，运行该文件即可对整个 CPU 进行仿真；
- 可以直接将该项目导入 Vivado（不需要手动拷贝），具体方法自行上网了解；
- inst_rom.v 和 data_mem.v 中配置的 inst_rom.data 和 data_rom.data 的文件目录需要按照本机进行更改；
- test_data_mem.v 为对数据存储器 data_mem.v 的仿真，当使用时需要将仿真中的 mem_file 替换为 data_mem（这个主要是我后来修改了数据存储器的文件名，但是仿真文件中未进行修改）；

