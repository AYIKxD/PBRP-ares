# PitchBlack Recovery Project for Xiaomi Ares (M2104K10I)

## Device specifications

| Feature                 | Specification                                                              |
| :---------------------- | :------------------------------------------------------------------------- |
| CPU                     | Octa-core (2x2.6 GHz Cortex-A78 & 6x2.0 GHz Cortex-A55)                    |
| Chipset                 | MediaTek MT6893 Dimensity 1200 5G (6 nm)                                  |
| GPU                     | Mali-G77 MC9                                                              |
| Memory                  | 6/8 GB RAM                                                                 |
| Shipped Android Version | Android 11                                                                 |
| Storage                 | 128/256 GB UFS 3.1                                                        |
| Battery                 | 5000 mAh, non-removable                                                   |
| Dimensions              | 164.2 x 76.5 x 8.8 mm                                                     |
| Display                 | 6.67 inches, 1080 x 2400 pixels, 120Hz, AMOLED                            |
| Rear Camera            | 64 MP (wide) + 8 MP (ultrawide) + 2 MP (macro) + 2 MP (depth)             |
| Front Camera           | 20 MP (wide)                                                              |

## Device picture

![Xiaomi Ares](https://i01.appmifile.com/webfile/globalimg/pandora/pms_1617686662197.png)

## Features

- [x] Decryption of /data
- [x] Display brightness control
- [x] Correct screenshot color
- [x] Vibration support
- [x] Flashlight support
- [x] MTP support
- [x] USB OTG support
- [x] Backup/Restore
- [x] Partitions backup/restore
- [x] File manager
- [x] Terminal
- [x] Advanced reboot
- [x] F2FS/EXT4 support
- [x] FBE support
- [x] Dynamic partitions support
- [x] A/B support
- [x] Fastbootd support
- [x] EDL mode support
- [x] Download mode support

## Compile

First, set up the build environment following instructions from [PBRP's README](https://github.com/PitchBlackRecoveryProject/manifest_pb).

Then, to compile:

```bash
# Clone the repository
git clone https://github.com/PitchBlackRecoveryProject/manifest_pb.git -b android-14.0 pb

# Enter the directory
cd pb

# Clone the device tree
git clone https://github.com/your-username/android_device_xiaomi_ares.git -b android-14.0 device/xiaomi/ares

# Clone the kernel
git clone https://github.com/your-username/android_kernel_xiaomi_ares.git -b android-14.0 kernel/xiaomi/ares

# Initialize the build environment
source build/envsetup.sh

# Lunch the device
lunch pb_ares-eng

# Build the recovery
mka recoveryimage
```

## Troubleshooting

If you encounter any build errors:

1. Make sure you have Python installed:
```bash
sudo apt-get install python3
```

2. If you get "No such file or directory" errors for recovery/root:
```bash
mkdir -p device/xiaomi/ares/recovery/root
```

3. If you get path-related errors, make sure your device tree is in the correct location:
```bash
# Should be in:
device/xiaomi/ares/
```

4. If you get "Don't have a product spec for: 'pb_ares'", make sure:
- Your device tree is in the correct location
- You've run `source build/envsetup.sh`
- You're using the correct lunch command: `lunch pb_ares-eng`

## Credits

- [PitchBlack Recovery Project](https://github.com/PitchBlackRecoveryProject)
- [TeamWin Recovery Project](https://github.com/TeamWin)
- [LineageOS](https://github.com/LineageOS)
- [Xiaomi](https://github.com/MiCode)

## License

```
#
# Copyright (C) 2024 The PitchBlack Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
``` 