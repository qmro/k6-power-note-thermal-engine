# karatep
The file contains optimizations for the io scheduler, gpu, and cpu governor. Additionally, the code has been converted from javascript to a simple executable file in C and merged with my initial script to make a mini script that does it all. This script contains all necessary lines of code that utilize core features available in the stock kernel without any unnecessary lines. Please note that this script should be used with the latest version of Hyperkernel and will be updated along with later releases of the kernel. Moreover, the script has to be copied to /data/adb/service.d/ while making sure it has the extension as .sh and the file's permissions are set to 755 (-rwxr-xr-x). Doing so would apply all optimizations on boot automatically without any need of kernel managers.
