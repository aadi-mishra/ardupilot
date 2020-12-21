[33mcommit 3c83eecf78f348afeb3a6f75555f7f8a66b7c746[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: Arsh <arshpratapofficial@gmail.com>
Date:   Sat Dec 19 11:37:23 2020 +0530

    Copter: AP_Arming: Added check for EKF origin altitude

[33mcommit d964fa2307709db83e9736caeab218e39af857af[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Fri Dec 18 08:43:23 2020 +0900

    Tools: fixup EKF source pre-arm test
    
    although setting COMPASS_USE/2/3 to zero disables the pre-arm for EK3_SRCx_YAW = 1 (Compass) the pre-arm still triggers if EK3_SRCx_YAW = 3 (External Compass Fallback)

[33mcommit 20f1603b73fa4647be226a539b62c776ec3c91ae[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Thu Dec 17 17:11:38 2020 +0900

    AP_NavEKF: source skips compass pre-arm check

[33mcommit 4998b536b42b47353f79323f945a498c2461a64c[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Thu Dec 17 16:26:51 2020 +0900

    AP_NavEKF: source returns YawSource None if COMPASS_USE all zero

[33mcommit dfd1c23cd3de5b4484232e1911f58d7217b57b41[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Thu Dec 17 16:23:03 2020 +0900

    AP_NavEKF: source format fix

[33mcommit 39be85cef467e920a8bf106e23a3e40d5234d6f2[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Thu Dec 17 16:22:52 2020 +0900

    AP_NavEKF3: integrate Source loss of init

[33mcommit 218c0e438510dedca0b7ed968112a95e5faca8f5[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 15 21:59:15 2020 +1100

    AP_NavEKF: Source's active_source_set becomes index

[33mcommit 89f9b9e9b04a63cc1eb1106e65947f5512b344f4[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 15 21:48:52 2020 +1100

    AP_NavEKF3: use AP_Enum to make code clearer

[33mcommit 9bf89e5635388723559f55b24bde3aa13903d5f0[m
Author: Mark Whitehorn <kd0aij@gmail.com>
Date:   Tue Dec 1 08:10:40 2020 -0700

    Plane: add check for vectored tailsitter in tailsitter_transition_vtol_complete

[33mcommit 7446a9c33cfdb45afc38ac7d59fd223dc407f875[m
Author: Mark Whitehorn <kd0aij@gmail.com>
Date:   Sun Nov 29 08:47:13 2020 -0700

    AC_AttitudeControl: make relax_attitude_controllers() non-virtual

[33mcommit dd7a860f230e6ba8987f01dc7adf28c1239a9dd4[m
Author: Mark Whitehorn <kd0aij@gmail.com>
Date:   Sun Nov 29 08:46:01 2020 -0700

    Plane: always instantiate AC_AttitudeControl_TS

[33mcommit 24508f08dccfb7f9d05547bcaf613c1483180e4a[m
Author: Mark Whitehorn <kd0aij@gmail.com>
Date:   Wed Sep 2 20:45:52 2020 -0600

    Plane: don't relax pitch attitude controller for vectored tailsitters in throttle_wait
    
    add is_vectored_tailsitter()
    instantiate AC_AttitudeControl_TS for tailsitters

[33mcommit cc2c631d23ee77d42cf69fef104c92ec4bd6c276[m
Author: Mark Whitehorn <kd0aij@gmail.com>
Date:   Wed Sep 2 20:45:06 2020 -0600

    AC_AttitudeControl: add AC_AttitudeControl_TS
    
    move tailsitter body-frame roll input method to new subclass
    override relax_attitude_controllers in AttitudeControl_TS

[33mcommit ba78fecaaa9cd86f9ecf8ada46ede2208a9161f7[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 18 22:36:04 2020 +1100

    autotest: added Kris location
    
    helps with testing missions from Kris in China

[33mcommit 8e3c6124eb1247711b6d01f50a2b03830047d887[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 18 21:54:08 2020 +1100

    Plane: added support for rear motor tilt
    
    needed for X8 tilt tri test aircraft for this PR

[33mcommit 7f3a851dd3f6c6e66d9555e8c0e701e12611b60e[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 18 21:53:43 2020 +1100

    SRV_Channel: added support for rear motor tilt

[33mcommit e94cf561d0cfd4f926e1adfa65ae536f78217e29[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 15 15:03:42 2020 +1100

    Plane: use rull euler control for fwd transition of tilt vectored planes
    
    this gives strong yaw control and wind handling for tilt vectored
    planes in forward transitions. It relaxes the yaw if the user either
    demands yaw with stick input or plane navigation is demanding a roll
    angle for a turn
    
    When navigation is demanded we setup yaw rate for a coordinated turn

[33mcommit abd5f8351d86ef44bddd7df4e7cb905d9d7bb12d[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 15 08:47:46 2020 +1100

    Plane: don't reset yaw target in TRANSITION_TIMER for tilt-vectored quadplanes

[33mcommit 4dc5162d0a555a8f94eea18728c7eed86dfaba4f[m
Author: Tatsuya Yamaguchi <susumu-336@hotmail.co.jp>
Date:   Sat Dec 19 10:31:13 2020 +0900

    AP_RangeFinder: change i2c reading frequency to 50Hz

[33mcommit 54708d916bc9d52c0199c4eb3c2537fcc9573aad[m
Author: ashvath <ashvath100@gmail.com>
Date:   Thu Jan 16 22:22:51 2020 +0530

    AP_RangeFinder: TFminiPlus driver outputs init failure to ground station

[33mcommit b0ee6393aeaab1a0ee839d36111ce2bff0220faa[m
Author: Tatsuya Yamaguchi <susumu-336@hotmail.co.jp>
Date:   Sat Dec 19 10:27:02 2020 +0900

    AP_RangeFinder: TFminiPlus: set frame rate to 250hz

[33mcommit 95bab71431b58d3f1e6969771a31ad8eeffbd74a[m
Author: Dr.-Ing. Amilcar do Carmo Lucas <amilcar.lucas@iav.de>
Date:   Tue Dec 15 12:01:38 2020 +0100

    Mavlink: common.xml: Update to latest mavlink
    
    common.xml: Add signal_quality field to DISTANCE_SENSOR message

[33mcommit d76825feeb963622eca74009b510a25d0258f1cb[m
Author: Dr.-Ing. Amilcar do Carmo Lucas <amilcar.lucas@iav.de>
Date:   Tue Sep 22 18:45:50 2020 +0200

    GCS_MAVLink: adapt to upstream changes in the distance_sensor mavlink message

[33mcommit 0bf0fbe6871760cdc269d3f04479bb81d8232a35[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Sat Dec 19 11:43:20 2020 +1100

    AP_Periph: prepare for 1.2beta2

[33mcommit f670f7a9b6eb2dbf3139ba109f40f9caf77fc0b2[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Thu Dec 17 21:41:10 2020 -0800

    AP_HAL_ChibiOS: change ADSB to use param ADSB_PORT instead of define

[33mcommit 2a4fef73dd14c4bf270e68d3773d4f94643d5d19[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Thu Dec 17 18:12:25 2020 -0800

    AP_Periph: change ADSB to use param ADSB_PORT instead of define

[33mcommit 84e578b3df9e6e3d08eb12f790e758a9232f26d1[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Tue Dec 15 16:08:59 2020 -0800

    AP_Bootloader: respect HAL_BOOTLOADER_TIMEOUT when CAN and SERIAL/USB is enabled

[33mcommit 5238f850919378bde25e8db7b9b9aa5c84c08ef5[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Wed Dec 16 21:46:31 2020 -0800

    AP_Periph: add BRD_SERIAL_NUM and append CAN_APP_NODE_NAME

[33mcommit 4efcf160050889ca0816173bb53a98a05caf0d30[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Fri Dec 18 10:21:26 2020 +1100

    autotest: correct number of bytes we expect to download
    
    We request a fixed number of bytes, which could be more or  less than the
    log file size.

[33mcommit 8e71e2505a5072df8911e08d00f6271486d19d0e[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Fri Dec 18 08:48:52 2020 +1100

    autotest: correct lookup for most recent log file

[33mcommit 50f9eee54cc1dec988233d749a6515f49991f4a6[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Thu Oct 8 10:44:46 2020 +0900

    Tools: relax fly_guided_stop climb rate tolerance to 1cm/s

[33mcommit 8567b829a6ce203c0b7907f5e89118129228a1f3[m
Author: hendjosh <hendjoshsr71@gmail.com>
Date:   Thu Dec 17 15:25:40 2020 -0500

    Tools: add name to GIT_Test.txt

[33mcommit 81745b0e64b3fd63fdeacbf340e01e0b2d3804fe[m
Author: Mike R <mr@digital.aero>
Date:   Thu Dec 17 14:52:42 2020 +0300

    Tools: Add Goretovka (RF, Moscow region) location

[33mcommit 76b0b0429f77fe710da45d7bcbd59de049902a76[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Jan 30 12:01:24 2020 +1100

    autotest: add another example on bisect helper

[33mcommit 0f545063976754bf762ca469eaec22953375bb06[m
Author: bugobliterator <siddharthbharatpurohit@gmail.com>
Date:   Thu Dec 17 16:58:54 2020 +0530

    .github: just skip the sitltest for ap_periph when using 5.4.0-1032 kernel

[33mcommit 6ea2f42f8e95d589bb6ba8219543caf8a3d1b780[m
Author: bugobliterator <siddharthbharatpurohit@gmail.com>
Date:   Thu Dec 17 16:58:26 2020 +0530

    Revert ".github: workaround for missing kernel modules for 5.4.0-1032-azure"
    
    This reverts commit 1c2e0a887fe8a2d102d9e83be9a74e6286f6b9f5.

[33mcommit a285a741df88a07f8810c319ee436e0ee57539e7[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Tue Dec 15 17:27:28 2020 -0800

    AP_Periph: implement HAL_PERIPH_ALLOW_MAVLINK_UART_OR_USB_REBOOT_CMD

[33mcommit 5c98e182361fa4143f1f78ff618fa180e2c570bd[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Tue Dec 15 17:26:59 2020 -0800

    AP_HAL_CubeORange-periph: enable HAL_PERIPH_ALLOW_MAVLINK_UART_OR_USB_REBOOT_CMD on USB

[33mcommit 6dfd2f2ff955b8021c96f58f86b75ef52729ae48[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Dec 17 11:47:13 2020 +1100

    AP_NavEKF3: use use_EKFGSFYaw to reduce code duplication

[33mcommit a31ea88ff5b1255c751b1d370bdc7a38d9967be2[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 17 14:02:06 2020 +1100

    SITL: use async SOAP requests for flightaxis
    
    this greatly improves performance for cygwin

[33mcommit 8d6d5c6b49b6fc2d2ef9e57bfc1f5c81b3a849e7[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 17 13:19:19 2020 +1100

    SITL: removed flightaxis threading

[33mcommit b4201436dd44ecf44b9f2a0f449cc698d1df7135[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Dec 16 12:41:26 2020 +1100

    HAL_ChibiOS: fixed flash space on 16k bl boards
    
    this avoids the stm32_flash_recent_erase() function which added around
    800 bytes to the bootloader. It is not needed

[33mcommit 62758ffd994c7114ef929ed0a799482ce542572b[m
Author: bnsgeyer <bnsgeyer@aol.com>
Date:   Wed Dec 16 18:22:48 2020 -0500

    AP_Motors: Dual-heli-keep intermeshing from using DCP to yaw mixer

[33mcommit 3f405590c7317497a0e61c71e75d247c817500e5[m
Author: PittRBM <Pitt_4231@hotmail.com>
Date:   Thu Dec 3 00:02:34 2020 +0700

    AP_Motors: Dual Heli-add support for intermeshing rotor

[33mcommit ebd83b756b800d06b200e7282b4b7e5e1e22ce20[m
Author: bnsgeyer <bnsgeyer@aol.com>
Date:   Wed Dec 16 08:47:07 2020 -0500

    AP_Motors: add DCP trim feature for Dual Heli

[33mcommit 2763ce027e9116233e09d0216a2d1cc3ba5a579f[m
Author: Mouna <malbaccouch@gmail.com>
Date:   Wed Dec 16 10:49:09 2020 +0100

    Tools: adding my name to GIT_Success

[33mcommit 1c2e0a887fe8a2d102d9e83be9a74e6286f6b9f5[m
Author: bugobliterator <siddharthbharatpurohit@gmail.com>
Date:   Wed Dec 16 12:11:21 2020 +0530

    .github: workaround for missing kernel modules for 5.4.0-1032-azure

[33mcommit f12191b4b11684d249077ffbffdb7444a819f56b[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Wed Dec 16 14:51:35 2020 +1100

    AP_Param: fix typo

[33mcommit 840c386a335d8d134aad260d365973ed85510e4f[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Wed Dec 16 14:51:17 2020 +1100

    AP_Param: add _FLAG to AP_PARAM_NO_SHIFT
    
    Just for consistency with the other flags

[33mcommit 7a2a60e65cf9ca146a3ca1d0deffa04041ec6dd0[m
Author: Pierre Kancir <pierre.kancir.emn@gmail.com>
Date:   Sun Dec 13 23:57:20 2020 +0100

    Tools: rover: correct test_setting_modes_via_mavproxy_switch for RTL and AUTO

[33mcommit 871b9fc12d9ef94be4da5ea3ac897caa9b626a69[m
Author: Pierre Kancir <pierre.kancir.emn@gmail.com>
Date:   Wed Dec 9 20:51:01 2020 +0100

    Tools: plane : initial_mode_switch_mode

[33mcommit e4707c20ea8f5e0b644a56d7e2c7b4cb05850c2f[m
Author: Pierre Kancir <pierre.kancir.emn@gmail.com>
Date:   Wed Dec 9 20:50:47 2020 +0100

    Tools: rover: add initial_mode_switch_mode

[33mcommit 9550721ae42d8be6336138fc3c3444800b682d05[m
Author: Pierre Kancir <pierre.kancir.emn@gmail.com>
Date:   Wed Dec 9 20:50:31 2020 +0100

    Tools: add initial_mode testing

[33mcommit 1e5d9fb2997bea1cc6c80d9a0a1ea15cd0353eac[m
Author: Pierre Kancir <pierre.kancir.emn@gmail.com>
Date:   Mon Nov 2 18:46:48 2020 +0100

    Copter: set initial mode on startup

[33mcommit be2e24391618e5cb3dd16f2f4a741f14fed51e42[m
Author: Pierre Kancir <pierre.kancir.emn@gmail.com>
Date:   Mon Nov 2 18:46:01 2020 +0100

    Copter: add initial mode parameter

[33mcommit a2cca60bebc9cdaa62dec76a131e25baa5ebab34[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue Dec 15 20:10:12 2020 +0900

    AP_NavEKF3: constify EKFGSF_getYaw

[33mcommit 754002525ef44f736898f8a0fa4ef04b11616912[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue Dec 15 16:29:31 2020 +0900

    AP_NavEKF: constify EKFGSF_yaw members

[33mcommit 0c3fcfd9d6accc5669345011a81a09d57793218d[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue Dec 15 16:50:31 2020 +0900

    AP_NavEKF3: add missing break to case statements

[33mcommit 9cb529cfd6aa1c41058cb1c68c6790018bb040b8[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue Dec 15 13:24:07 2020 +0900

    AP_NavEKF3: minor formatting fix
    
    also replace tab with spaces

[33mcommit 6cfaae4e7df729c5b6fa32b864c4c7dcd7bcf130[m
Author: Sebastian Witt <se.witt@gmx.net>
Date:   Sat Dec 12 21:19:19 2020 +0100

    AP_HAL_ChibiOS: Support for Diatone MambaF405 MK2

[33mcommit fe8ccca9a9c000b01025c4936c836a29221f92c5[m
Author: Sebastian Witt <se.witt@gmx.net>
Date:   Sat Dec 12 21:16:42 2020 +0100

    Tools: Add Diatone MambaF405 MK2

[33mcommit e6d0e381299c9b8aa169d4bff7fb8a5c5f8a6d8a[m
Author: Andy Piper <github@andypiper.com>
Date:   Sat May 9 09:20:33 2020 +0100

    AP_RCProtocol: allow handshake to initiate RC connection. Support listen-only SRXL2 devices.
    
    only bootstrap when SRXL2 is the only configured protocol (RC_PROTOCOLS=256)
    remove spurious 0 initializers

[33mcommit aae2d0082d964b20d512cd0769a24a0156cf72bd[m
Author: 李孟晓 <mengxiao@cuav.net>
Date:   Mon Aug 10 02:58:02 2020 +0000

    AP_BattMonitor_UAVCAN: Fix issue with multiple batteries not working

[33mcommit ad14e153e82580977ca303bbdb0ac57dcffacc57[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 3 17:42:39 2020 +1100

    Plane: fixed tilt vectoring to cope with large tilt angles
    
    This uses vectoring for both roll and yaw when tilted, and uses
    differential thrust for yaw when tilted

[33mcommit c504e2db04f2dfc4f6d41afbfef1f7c81d8aa6e3[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Sat Dec 12 15:45:57 2020 +1100

    AP_Motors: added disable_yaw_torque() method
    
    this is used for tilt-vectored quadplanes to use only vectoring for
    yaw control. This avoids some nasty transition issues

[33mcommit f10f7d971d349002a090e1e696949aa06068cc9d[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Sat Dec 12 15:55:50 2020 +1100

    Tools: added --vehicle-binary to sim_vehicle.py
    
    this is useful for using a pre-built binary

[33mcommit 7d88d104b89ddf82a44622aff1e8d02e1f9eea2d[m
Author: Pierre Kancir <pierre.kancir.emn@gmail.com>
Date:   Tue Dec 15 17:25:57 2020 +0100

    Tools: put Rover SlewRate test on disable list for now

[33mcommit 087eb8eeea582c76b911081e316c5e8229f2bd73[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 15 18:08:47 2020 +1100

    Tools: rebuild CAN bootloaders for AP_Periph

[33mcommit e0e41983582e3a9d0ff18440b9b51c3e654629cd[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 15 18:00:22 2020 +1100

    AP_Bootloader: fixed can bootloader with old UAVCAN GUI tool
    
    the part that was failing was the write of the leading words. That
    part is not actually needed in this bootloader as we use a CRC before
    running, so remove it, which fixes the old windows GUI tool.
    
    This also saves some memory and flash

[33mcommit 908b348c31fda541485cf990ba216a72c6cf45a3[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Tue Dec 15 18:28:00 2020 +1100

    AP_NavEKF3: Fix typo in enum label

[33mcommit e819dbdd64d159903cc10e2262e5765680f9d973[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue Dec 15 16:20:31 2020 +0900

    AP_NavEKF3: add EKFGSF_getYaw to reduce duplicate code

[33mcommit c2edae905fc33696c36b25b04870ef0a2ba756af[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue Dec 15 13:48:17 2020 +0900

    AP_NavEKF3: simplify logic when updating yawAngDataStatic

[33mcommit 843ddb4fdcf18b20dcb7cb48dbe03f6d844e1e70[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue Dec 15 13:23:37 2020 +0900

    AP_NavEKF3: minor format fix

[33mcommit a9e76d44af45a717f29e244c14040565ab5817f8[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Tue Dec 15 08:43:46 2020 +1100

    AP_NavEKF3: Clean up yaw fusion logic

[33mcommit ccfd89240b72c24a0ebb965c29de9a5bee72ecf7[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Tue Dec 15 07:54:47 2020 +1100

    AP_NavEKF3: Fix error in calculation of static 312 order yaw reference

[33mcommit 1307a2fea86648f824662567188970a53561615b[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Tue Dec 15 14:22:14 2020 +1100

    ArduPlane: add auxillary function to change to FBWA

[33mcommit 44cafa0dccf463c40c376d36d087ad9984dc7ee1[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Tue Dec 15 14:22:14 2020 +1100

    RC_Channel: add auxillary function to change to FBWA

[33mcommit fb8e1f4b9dd2fba65bb577072a1772673f167713[m
Author: Dr.-Ing. Amilcar do Carmo Lucas <amilcar.lucas@iav.de>
Date:   Fri Dec 11 12:35:35 2020 +0100

    Tools: Added support for 1/s and kg/m/m parameter units

[33mcommit f77ab30f7a0053712ceee0a8405102e520393d50[m
Author: Dr.-Ing. Amilcar do Carmo Lucas <amilcar.lucas@iav.de>
Date:   Fri Dec 11 12:34:40 2020 +0100

    Revert "AP_NavEKF3: Remove unsupported parameter unit descriptions"
    
    This reverts commit 4f4a2f446da61c23dee23615501c8740cef54fb0.
    Makes more sense to add those to the list of supported units

[33mcommit ffa057d61edf2107680bf4721f5939019826c53f[m
Author: Dr.-Ing. Amilcar do Carmo Lucas <amilcar.lucas@iav.de>
Date:   Thu Dec 10 14:44:59 2020 +0100

    Copter: prepare 4.0.6-rc1 release notes

[33mcommit 2e1833416524e9f62eaf673e8d96feb9852d0fda[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Dec 9 14:59:31 2020 +1100

    HAL_SITL: fixed baudrate 0 set in SITL
    
    this fixes MSP sensors in SITL with real uarts

[33mcommit 7b6392fcb53e884e58f437e461cb67ab75c14cc7[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 12:15:28 2020 +1100

    HAL_Empty: fixed build

[33mcommit d6c5fc36d8ab3709f6a7601a28a5f5bc3fbff18b[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 12:15:09 2020 +1100

    HAL_Linux: only init serial(0)
    
    we should not pre-init all uarts, it wastes memory if unused

[33mcommit 19723e6e7560a4f82a3a675760896118fa96ca7a[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:57:33 2020 +1100

    AP_HAL: make uart pointers private
    
    this ensures they cannot be used by library or vehicle code, so we
    will be able to remove them in future

[33mcommit 195ec0316a934294d9c064897f33b3f0402fae64[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:56:53 2020 +1100

    AP_HAL: fixed example fw for SERIAL naming

[33mcommit 6249abaf8f77267a1de25f4238287129dc534295[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:56:38 2020 +1100

    RC_Channel: fixed example firmware

[33mcommit 5406699ec8e49e24ed5f662d1709da08fac1d09b[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:56:28 2020 +1100

    AP_SerialManager: removed unnecessary uart pointer in state structure

[33mcommit 348dfeff6e7666b171825edcc876d79f7ce43b02[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:56:02 2020 +1100

    HAL_Linux: use a loop for serial tick

[33mcommit bf546f363d20afe1e43007a72f53cb1a9a72298c[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:55:18 2020 +1100

    HAL_ChibiOS: don't init serial 1 and 3
    
    these should not be treated as special. Initialising them early just
    wastes memory if the end up not being used

[33mcommit 23a9a14d6438fa6c3174314f704211c0a50d0b8b[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:18:38 2020 +1100

    Tools: convert to using hal.serial() instead of hal.uartX

[33mcommit 6df118e7b4b6a888abd84634643a78654cc94cb8[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:18:38 2020 +1100

    GCS_MAVLink: convert to using hal.serial() instead of hal.uartX

[33mcommit 23e629715ee6272d5b738d0f5ad759af558c11df[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:18:38 2020 +1100

    AP_SerialManager: convert to using hal.serial() instead of hal.uartX

[33mcommit cf187ff837908e01aa2b3ac991f1a4a861bb4160[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:18:38 2020 +1100

    AP_HAL_SITL: convert to using hal.serial() instead of hal.uartX

[33mcommit db76eebd8558b5ebdcda800709ca9e6b0918a54d[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:18:38 2020 +1100

    AP_HAL_Linux: convert to using hal.serial() instead of hal.uartX

[33mcommit 95c0852b13536f69d4167e97118fc37b9ebccdd0[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:18:37 2020 +1100

    AP_HAL: convert to using hal.serial() instead of hal.uartX

[33mcommit e54fc4b0deb8cdc53bc9f71cf42f61d8e646ff37[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:18:37 2020 +1100

    AP_HAL_ChibiOS: convert to using hal.serial() instead of hal.uartX

[33mcommit e02047861ad1c572833670963c2505d3c46bb65e[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:18:37 2020 +1100

    AP_GPS: convert to using hal.serial() instead of hal.uartX

[33mcommit 0f5a75f5b99d7977b7ba0f1f91a9ca288aa0d769[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:18:37 2020 +1100

    AP_BoardConfig: convert to using hal.serial() instead of hal.uartX

[33mcommit 8678759da4b817e1534e1c1c186d3dc99c78115c[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 11:18:03 2020 +1100

    AP_HAL: added hal.serial() access to uarts
    
    this gives access to serial ports in the SERIALn_ order. It is inlined
    by the compiler so using hal.uartB and hal.serial(3) generates
    idential code on stm32 (tested on H7).
    
    This is a step towards eliminating hal.uartX completely and the
    horrible uartB ordering

[33mcommit 4ec1c2ea67baf5fa92f0f2c990ab1479a284405d[m
Author: Jaaaky <43599380+Jaaaky@users.noreply.github.com>
Date:   Mon Dec 14 23:17:04 2020 +0200

    AP_IOMCU: Remove duplicate includes from AP_IOMCU.cpp

[33mcommit 8b8029fdfe063e4759848929c9a487df973da85f[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Dec 7 11:03:26 2020 +1100

    AP_Param: cope better with flooding the save queue with one param

[33mcommit 5a8acea0dd21d02795f11d2eef9b94843cfeba1a[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Dec 7 09:37:43 2020 +1100

    AP_Param: fixed lockup in scripting due to save queue
    
    this is a quick fix for a lockup in scripting due to the mission API
    holding the scheduler semaphore when it is updating the mission count
    parameter

[33mcommit bab1bff2b98531813cc8fb2456c2ab65202d0ff7[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Dec 14 14:31:24 2020 +1100

    Tools: added f303-M10070 bootloader

[33mcommit 739fec001f0c6b6f3c0f8e1ea7ad1874b0cf808b[m
Author: Habibullah Oladepo <holadepo@gmail.com>
Date:   Sun Dec 13 15:16:04 2020 +0100

    Plane: Fix typos in Parameters.cpp

[33mcommit 3cf71d11a93628e889e1699a0154c8db9ba70014[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Sun Dec 13 10:32:30 2020 +1100

    AP_Periph: mark version as 1.3dev

[33mcommit 52f66f365459a32b8c2c19b44174b1147197ff98[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Sun Dec 13 10:30:36 2020 +1100

    AP_Periph: updated release notes for 1.2.0beta1

[33mcommit 4b47ddf556dd40b03448e7d456bd766c4f1d6613[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Fri Dec 11 09:44:46 2020 -0800

    AP_Periph: add battery monitor to AP_Periph README

[33mcommit ce87b62dcccb2c391d08bb5c78d0da00a3ceacd7[m
Author: Phillip Kocmoud <phil@mrobotics.io>
Date:   Fri Dec 11 21:19:28 2020 -0600

    AP_Periph: Add alternate ordering of NCP5623 LED colors

[33mcommit 7449b3eea437479a58fc3fbad24ce30ab89b2097[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Fri Dec 11 10:26:42 2020 +1100

    AP_HAL_SITL: fix help output

[33mcommit 4ae51c5aa5adb3ca007fb8ff39eb9e9afe4ba2d5[m
Author: Arsh <arshpratapofficial@gmail.com>
Date:   Fri Dec 11 01:43:09 2020 +0530

    README: fixes some grammatical errors

[33mcommit a2d6ec4bec8f953270ad93de0d8ca953d7878118[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue Dec 8 20:38:22 2020 +0900

    Rover: simple mode handles two paddle input

[33mcommit 04f6b2e26e01ad5b311543befd616d2303e938d4[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Thu Dec 10 13:23:45 2020 -0800

    Plane: remove unnecessary ::cork() in init

[33mcommit 8f3243029404482ad259a5508de9b9460463ca60[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Fri Dec 11 14:08:30 2020 +1100

    AP_NavEKF3: Fix white spaces

[33mcommit bdc202378afc2e69c645bb8c185cc550dc91439d[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Fri Dec 11 14:05:44 2020 +1100

    AP_NavEKF3: fix white space

[33mcommit ed17d8e48f0c0d877be5136750c56680f6fb8b5e[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Fri Dec 11 13:41:18 2020 +1100

    AP_NavEKF3: Improve parameter display names

[33mcommit 4cf78c34e744c08a9f98fa8b3ac911b0bcd2ce19[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Fri Dec 11 11:35:07 2020 +1100

    Tools: Add autotest for copter wind estimation and baro correction

[33mcommit 171f0b399f3dfbff97e9004210576835fdfd6287[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Wed Dec 9 20:00:29 2020 +1100

    AP_NavEKF3: Remove commented code

[33mcommit b86c014400057bad46dc3d9c2ec6b4d20d708325[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 8 13:28:53 2020 +1100

    AP_NavEKF3: rename drag parameters to start with EK3_DRAG_

[33mcommit 3e2ff717503ec63b8aeb9ca355f6a30af77ef518[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Dec 7 07:37:08 2020 +1100

    AP_Baro: rename params to suit new BARO param naming

[33mcommit a3b5901218eb294f8d3ee3a786a2ce1e9ee4998d[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Sun Dec 6 09:02:42 2020 +1100

    autotest: Fix failing copter fly_square test
    
    This test should be flown in ALT_HOLD, not  STABILIZE as that is better mode to test the record waypoint function becasue it removes the need to fine tune the RC3 value to match thrust/weight variation as the hover thrust is not learned fast enough at the start of the test.

[33mcommit 47d4506e6847ea3bf4e59293f2ed6e65908d1f3e[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Sun Dec 6 07:34:03 2020 +1100

    AP_NavEKF3: Add drag and sideslip innovation logging

[33mcommit b258cb0539f860ba1f21eab7fde299c31cbd9fc8[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Sun Dec 6 06:21:59 2020 +1100

    SITL: Add momentum drag to Z axis to work around thrust model deficiencies

[33mcommit e835da41fae103eb161d7590ee5f1cb2fdc6d59d[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Sun Nov 29 09:54:56 2020 +1100

    Tools: Define momentum drag

[33mcommit a907c10733a297f1db46a1805e23d51753d426a0[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Sun Nov 29 09:51:58 2020 +1100

    SITL: Add momentum drag to multicopter model

[33mcommit abd3ae8f3b4f9f09dacae1caf8c4de7ff858a3d0[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Nov 25 15:28:26 2020 +1100

    Copter: added mavlink reporting of airspeed and wind
    
    when we have EKF3 estimation available

[33mcommit b7f68e87b4c61886a1dd5527659db4c8b06f8565[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Nov 25 13:44:46 2020 +1100

    SITL: added barometer wind coefficients

[33mcommit 567de3047b25e92a3de0316377cb31a62adf389e[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Nov 25 13:44:22 2020 +1100

    AP_Baro: added modelling of baro wind effects in SITL

[33mcommit 5fc68a1ce5fd5783079322bfe5180011b3ba7baf[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Nov 25 12:28:26 2020 +1100

    autotest: adjust for new baro SITL param names

[33mcommit e552fd7e5a0dede2b1eeca2a7f6c08dec363e0e2[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Nov 25 12:28:11 2020 +1100

    AP_Baro: adjust for new baro params in SITL

[33mcommit 3456bdb4eb2118e3b06b4438c18956370fb1d441[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Nov 25 12:27:56 2020 +1100

    SITL: added a separate param class for SITL baro params
    
    makes it easier to add more

[33mcommit 9563c1ed334a9cbb57c9d4efb5f9603c94569884[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Nov 25 11:59:44 2020 +1100

    AP_Baro: rename wind coefficient params to be clearer

[33mcommit 4884476c096aa249fb9352f2090a8fea942099c5[m
Author: Paul Riseborough <priseborough@sypaq.com.au>
Date:   Wed Nov 25 11:43:07 2020 +1100

    AP_NavEKF3: Formatting and comment fixes

[33mcommit be4d10a95ef286670236b27e1f9166d15e5ca1ce[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Nov 23 19:14:28 2020 +1100

    AP_NavEKF3: rework parameter handling
    
    and fixed indentation

[33mcommit 1c1c067dee306851407c97550e264440e6b6d5e2[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Nov 23 18:58:27 2020 +1100

    AP_Baro: rework to separate out wind coefficient params
    
     - disable on low flash boards
     - add an enable parameter per baro for wind coeffients

[33mcommit 5da62aeaa23375bc691892986c6e6ed79c997dfe[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Sun Nov 22 19:29:31 2020 +1100

    AP_NavEKF3: Fix CI build errors

[33mcommit 0d2c235027614b215483cc2cea18eff4ad6e972d[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Sun Nov 22 11:08:56 2020 +1100

    AP_NavEKF3: Fix #define typo

[33mcommit ab05e8ed4af44139a2962d15af859591b1352d6b[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Sun Nov 22 10:48:37 2020 +1100

    AP_NavEKF3: Update param descriptions

[33mcommit 4f4a2f446da61c23dee23615501c8740cef54fb0[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Sat Nov 21 20:39:25 2020 +1100

    AP_NavEKF3: Remove unsupported parameter unit descriptions

[33mcommit 0be04988014c1e6a3a54945ec85e10dbb5507ece[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Sat Nov 21 08:40:58 2020 +1100

    AP_Baro: Add static pressure positoin error correction

[33mcommit 3a0105fcc3dca43480b2b659d1e30915237087d2[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Sat Nov 21 08:40:19 2020 +1100

    AP_AHRS: Add accessor function for body frame airspeed vector

[33mcommit b372d62f35f1829920d6512391c871ed09c5eba3[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Sat Nov 21 08:39:55 2020 +1100

    AP_NavEKF2: Add accessor function for body frame airspeed vector

[33mcommit c9ab4b18b0066ab70126b7e2297ed08cf290cc44[m
Author: Paul Riseborough <gncsolns@gmail.com>
Date:   Sat Nov 21 08:39:04 2020 +1100

    AP_NavEKF3: Add multicopter wind estimation

[33mcommit ab444e1d2644b5118e21a519d129f173e74b1d9a[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Fri Dec 11 09:13:18 2020 +1100

    RC_Channel: correct function initialisation

[33mcommit ac4a05ffbf9a9262e1f1495d7bf8394e2ef5c6c5[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Dec 11 12:48:00 2020 +1100

    AP_NavEKF3: fixed null dereference of airspeed
    
    this caused a segfault in replay

[33mcommit 2071a19a407407e9d3568e4e188ed274d7ff08cb[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 8 14:04:16 2020 +1100

    AP_NavEKF3: only fuse airspeed if healthy

[33mcommit 5e72907730bff9e575ad379767be1fce86368190[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 8 14:04:03 2020 +1100

    AP_NavEKF2: only fuse airspeed if healthy

[33mcommit d16af5448b1ac16e3e79e65a160aff3370300e8d[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 8 14:03:49 2020 +1100

    AP_DAL: added healthy() method for airspeed

[33mcommit ca41a1907280da83cd822fb8742f6fc784740bbb[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Dec 10 22:14:12 2020 +1100

    AP_AHRS: AHRS itself must also be healthy to arm, not just the "backend"

[33mcommit 813723d0b71161d5f7adc474200997025c36d3d4[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Dec 10 19:06:22 2020 +1100

    autotest: add test for needing AHRS to be healthy to arm

[33mcommit 9ad2961664155a2b3533352d62fdc299acaa58a2[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Dec 10 22:13:11 2020 +1100

    autotest: allow regex for matching wait_statustext

[33mcommit 50957fff891a11dd82e0a106f2ac84d9768c0d1e[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Mon Dec 31 15:23:31 2018 +1100

    Tools: autotest: bisect-helper.py can run autotest by name

[33mcommit ccd4c0b93f578e2e58a12391a3ace021a4124f85[m
Author: Dr.-Ing. Amilcar do Carmo Lucas <amilcar.lucas@iav.de>
Date:   Wed Dec 9 12:17:57 2020 +0100

    Mavlink: update to 2020-12-09

[33mcommit 1d0e7d29745f022364b808d43eb59ecde0dc9825[m
Author: Dr.-Ing. Amilcar do Carmo Lucas <amilcar.lucas@iav.de>
Date:   Tue Sep 22 17:54:45 2020 +0200

    GCS_MAVLink: Added cells 11...14 voltage information (13 and 14 are 0 for now)

[33mcommit 89f0ed2f8f262856d86e0bd8b53f61e99be0dfb9[m
Author: yaapu <alex.apostoli@gmail.com>
Date:   Sun Dec 6 13:38:42 2020 +0100

    AP_Scripting: added bindings and example for waypoint info

[33mcommit 2e69ba1091590a7841e7a44a47ff5fc965342792[m
Author: yaapu <alex.apostoli@gmail.com>
Date:   Sun Dec 6 13:38:12 2020 +0100

    ArduSub: added virtual getters for waypoint info

[33mcommit 8ea896e138014ca2acbfe3ab190b0a9782c7ea5c[m
Author: yaapu <alex.apostoli@gmail.com>
Date:   Sat Dec 5 19:45:11 2020 +0100

    Rover: added virtual getters for waypoint info

[33mcommit 141010ac39a787195cb4cf3611a0070eae0eedc1[m
Author: yaapu <alex.apostoli@gmail.com>
Date:   Sat Dec 5 19:44:48 2020 +0100

    ArduPlane: added virtual getters for waypoint info

[33mcommit 497dbd14148b7ad316fda2c06c5ffbb32a70699e[m
Author: yaapu <alex.apostoli@gmail.com>
Date:   Sat Dec 5 19:44:07 2020 +0100

    ArduCopter: added virtual getters for waypopint info

[33mcommit edf2291fb0fa2ffee3850dea9f56750a528d3063[m
Author: yaapu <alex.apostoli@gmail.com>
Date:   Sat Dec 5 19:46:16 2020 +0100

    AP_Vehicle: added getters for waypoint info, refactored osd publish_nav_info()

[33mcommit 68b2982cc686e9d11d227b45aef212ec0f7ae85f[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Tue Dec 8 13:18:27 2020 -0800

    AP_HAL_ChibiOS: CubeBlack/Orange-periph to use default HAL_SUPPORT_RCOUT_SERIAL

[33mcommit 66306459151463324ac2a982bb8c21d0f2a21d19[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Tue Dec 1 04:06:33 2020 -0800

    AP_HAL: ap_periph should disable HAL_SUPPORT_RCOUT_SERIAL by default

[33mcommit 0c5cc16d7b43ac1a4439a0e9346eddc73458f47b[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Tue Dec 8 23:39:48 2020 -0800

    AP_Periph: populate more fields in batteryinfo

[33mcommit 449b0fb1459a1a85da34efc3053ac9dbceda288c[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Tue Dec 8 21:13:41 2020 +1100

    SITL: add simulated SF45B

[33mcommit c1202e4878137f416a07fb5130f5223a3832ec20[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Tue Dec 8 21:13:41 2020 +1100

    AP_HAL_SITL: add simulated SF45B

[33mcommit dc3ded234bbe3209eac8e46fd02bee686557841d[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Wed Dec 9 17:12:25 2020 +0900

    Copter: FS_GCS_ENABLE param desc replaces deprecated with removed
    
    Also modified FS_THR_ENABLE param desc replaces deprecated with removed

[33mcommit 9803a70d3f2ef18a2796b1522822a9abc3d82b7f[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue Dec 8 16:39:56 2020 +0900

    Tools: copter autotest spelling and format fixes

[33mcommit 665e6ccdcb1693f8604057d89852487d23f349e5[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue Dec 8 16:12:54 2020 +0900

    Tools: copter GCS fs tests explicitly set FS_GCS_ENABLE and FS_OPTIONS

[33mcommit 98a41ab005592c359918929bab8a6b889768370a[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue Dec 8 14:39:11 2020 +0900

    Copter: FS_OPTIONS defaults to continue pilot controlled modes on GCS failsafe

[33mcommit e1aaea083406917d09f82822989d179cc7204cdc[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue Dec 8 14:07:41 2020 +0900

    Copter: pre-arm check of FS_GCS_ENABLE=2

[33mcommit 42b85c88edd1824348232a767b5943096f5e1fbc[m
Author: yaapu <alex.apostoli@gmail.com>
Date:   Mon Nov 9 10:33:19 2020 +0100

    AP_MSP: fix for multiple backends initialization

[33mcommit e044cdfde792fb7c0c06e36bd3cee3830c9b9d13[m
Author: yaapu <alex.apostoli@gmail.com>
Date:   Wed Nov 18 18:16:15 2020 +0100

    AP_Frsky_Telem: fix for conditional compilation of bidir support

[33mcommit 6dfa42c9583829cbf775de5ce9949febda92e979[m
Author: yaapu <alex.apostoli@gmail.com>
Date:   Wed Dec 2 22:50:12 2020 +0100

    RC_Channel: added FPORT2 to RC_PROTOCOLS parameter

[33mcommit 502dafed04e1348194b9f00d55f23ba0721b6612[m
Author: Mehmet Recep Aşkar <43235724+Kametor@users.noreply.github.com>
Date:   Sat Dec 5 23:55:57 2020 +0300

    Update README.md
    
    The link gives 404 error. The link I am suggesting is not more than in this page but working.

[33mcommit 4a35159cbad62696838f2e05b196add714010763[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Fri Apr 24 14:29:42 2020 -0700

    Plane: reset baro_takeoff_alt while disarmed

[33mcommit 0406b28abdf83c03da35ca24dd68621c845047c9[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Wed Dec 9 13:32:40 2020 +1100

    autotest: print exception if caught in test_alt_estimate_prearm

[33mcommit 2203bf2400c49e84207f6aac01fb0fcbb19bfc4c[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Thu Dec 3 17:24:39 2020 -0800

    AP_HAL_ChibiOS: Add f303-periph default RANGEFINDER_MAX_INSTANCES 1

[33mcommit cecdc798ca099edec1ccd1b5cf544653d6406c4f[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Wed Dec 9 13:30:36 2020 +1100

    autotest: present strings for unexpected results in run_cmd_get_ack

[33mcommit ea57b1982f96faa512a29eaa24b24f2703d582a5[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 8 18:17:59 2020 +1100

    AP_Airspeed: cope with no temperature on MSP airspeed

[33mcommit 39c21e662db7fd1fc64fdccebb99b1d9632a5a63[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 8 18:08:39 2020 +1100

    AP_Periph: check compass and baro health before using

[33mcommit 74813e7761ac14cc9ecdf14b15d9d75d4164c715[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 8 14:04:53 2020 +1100

    AP_Periph: stop sending airspeed when unhealthy

[33mcommit 2d75ef4f60b00069407222eeca6ea90b2bea83f8[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 8 14:04:39 2020 +1100

    AP_Airspeed: handle INT16_MIN temperature for UAVCAN sensor

[33mcommit 73fda4e6a74df78c796a709e8488b42147f05ac5[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Nov 17 09:53:20 2020 +1100

    AP_Airspeed: cope with zero ratio in SDP3X driver
    
    needed for AP_Periph

[33mcommit 857d905d9fb03b864bb00a7b60f939a8f8620d89[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Nov 16 21:35:15 2020 +1100

    AP_Airspeed: added MSP backend

[33mcommit ae2a310b9cba9b9d555eb45c7dcaf9fa52d7e39d[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Nov 16 21:35:15 2020 +1100

    AP_MSP: added airspeed support

[33mcommit 75333dcd2f68fae17657aaed4c7beb31f32efa1d[m
Author: giacomo892 <giacomo1989@gmail.com>
Date:   Sat Oct 24 10:52:29 2020 +0200

    AP_Periph: support output of MSP airspeed sensor

[33mcommit 19f3fda31bea4b4174f6a56657e9442005c80c84[m
Author: Boris Borisov <boris@dronamics.com>
Date:   Mon Sep 28 10:20:15 2020 +0300

    AP_Volz_Protocol scaling bugfix
    
    ->Fixed incorrect scaling betwen PWM values and Volz protocol values
    ->In the scaling formula are hardcoded PWM values min=1000 and max=2000. The idea behind this is to be able to change Volz range, when you use SERVOn_MIN and SERVOn_MAX parameters.

[33mcommit f62a27ca8a2fef3ef744f2b519bd7ccb61220f30[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Mon Dec 7 09:20:29 2020 -0800

    Tools/AP_Bootloader: differentiate FAIL_REASON_BAD_LENGTH errors

[33mcommit d0c1fd701f9ee28ed29f228d89bb2b6cecebf9e2[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Sun Dec 6 10:30:07 2020 +1100

    AP_Periph: prevent loop stuck internal error in AP_Periph bootloader flash

[33mcommit 0c440d567584f6ab574a5a26a050de960de443f0[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Sun Dec 6 10:29:31 2020 +1100

    HAL_ChibiOS: cope with flash erase in expected delay
    
    when there has been a flash erase when we are definately in an
    expected delay

[33mcommit 445759295df0711a92e7d2592986836b5fc3204c[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 3 19:14:33 2020 +1100

    SITL: fixed use of GND prefix

[33mcommit c6548cc1b9ed4b71f03ac8e0059baef19181c852[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 3 19:14:24 2020 +1100

    autotest: fixed use of GND prefix

[33mcommit 3f6fd49507f286ad8f6ccc9e29b110d5e9fc9207[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 3 19:14:10 2020 +1100

    Replay: rename baro params to BARO*

[33mcommit dde940380f7442cef7f30444bee3d63940b9ca42[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 3 19:13:59 2020 +1100

    Tools: update param files to not reference GND parameters

[33mcommit cd2f2f96eb84167c2dc43d206dbd4efc7916d9c2[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 3 19:13:33 2020 +1100

    rename barometer parameters to BARO prefix

[33mcommit 5e3bf0a7034fe2bea939006449e66d5bb81de355[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 3 19:13:08 2020 +1100

    GCS_MAVLink: implement BRD_OPTIONS bit for setting of internal parameters

[33mcommit 12acc0724e8bd0e806a6ffac4a4968bcaac48593[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 3 19:13:08 2020 +1100

    AP_Frsky_Telem: implement BRD_OPTIONS bit for setting of internal parameters

[33mcommit d099af87b2cb622ad75ade866020343e65a62619[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 3 19:12:39 2020 +1100

    AP_Baro: renamed parameters and mark pressure and temperature readonly
    
    this is ready for BARO parameter prefix

[33mcommit f543c483fc0b45771d8d6f17893bf24989fca536[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 3 19:12:14 2020 +1100

    AP_BoardConfig: added BRD_OPTIONS flag for setting of internal parameters
    
    this allows us to make parameters read-only for normal use, but for
    special developer requirements the user can unlock the parameters at
    their own risk

[33mcommit c731e776072022c501073ef7553f7e3ea1c815df[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Dec 7 15:05:48 2020 +1100

    AP_Scripting: added mission clear and offset_bearing bindings

[33mcommit 719ca3f95fdc1e148bfeac5d6c2a33c3bcba70ad[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Mon Dec 7 13:40:14 2020 +1100

    Plane: be consistent about strings in fence auto-enable/disable

[33mcommit f4cbc50ba41d12dcf93cd2a0d48c662b3c21d4cd[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Sat Dec 5 18:18:28 2020 +1100

    Copter: use an enumeration for pre-throw motor state

[33mcommit bd0dff1b0e75373be9e7988dd39411d4191051bf[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Sat Dec 5 18:10:00 2020 +1100

    Copter: use enum-class and AP_Enum for ThrowType

[33mcommit de2802e3227795539f55980c541c3d1a22ed678b[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Fri Dec 4 14:12:54 2020 +1100

    AP_Airspeed: populate airspeed_raw for sensors returning airspeed reading
    
    Without this ARSP[x].Airspeed isn't populated

[33mcommit 59445674e7ebaa728c3f5fa053594087790515fa[m
Author: murata <ma2maru@gmail.com>
Date:   Thu Sep 17 00:02:07 2020 +0900

    scripts: Support for decacopters

[33mcommit 690d64d664bc256a89014622e84c68465d435345[m
Author: murata <ma2maru@gmail.com>
Date:   Thu Sep 17 00:01:42 2020 +0900

    LogAnalyzer: Support for decacopters

[33mcommit 2d55c2c42f04cd6fa0a014bccb5e8a285e612375[m
Author: murata <ma2maru@gmail.com>
Date:   Thu Sep 17 00:01:02 2020 +0900

    pysim: Support for decacopters

[33mcommit 13c7980f0b20ed41acbd7c3dce2a4a491fddeff1[m
Author: murata <ma2maru@gmail.com>
Date:   Thu Sep 17 00:00:26 2020 +0900

    SITL: Support for decacopters

[33mcommit 159a6c7ed6032f764dcb4168815cdf960d4fa6e4[m
Author: murata <ma2maru@gmail.com>
Date:   Thu Sep 17 00:00:00 2020 +0900

    AP_Motors: Support for decacopters

[33mcommit a43064bb4e0710cdba01218b6bb9552e13d13151[m
Author: murata <ma2maru@gmail.com>
Date:   Wed Sep 16 23:59:23 2020 +0900

    AP_HAL_SITL: Support for decacopters

[33mcommit dcda0c48caf9a3cf4c953255ad21a5f4e3aea4f8[m
Author: murata <ma2maru@gmail.com>
Date:   Wed Sep 16 23:58:57 2020 +0900

    Copter: Support for decacopters

[33mcommit a46333eff59aafa6a43697f89e9e2849e7ce688b[m
Author: murata <ma2maru@gmail.com>
Date:   Wed Sep 16 23:48:26 2020 +0900

    Tools: Support for decacopters

[33mcommit 0e569e556609e5833bb864e467a7f17a5dbe0b9d[m
Author: Jaaaky <43599380+Jaaaky@users.noreply.github.com>
Date:   Sat Jan 4 13:46:46 2020 +0200

    AP_Mission: Fix comments for DO_CHANGE_SPEED

[33mcommit f84cb66bc618631e8e3dd6a655eb2316e963b881[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Dec 3 21:30:24 2020 +1100

    AP_Logger: move log ids from EKF2 and EKF3 to the 'below 128' section'

[33mcommit f6d3983e1bcb939a49c21d535e4e682f41db2351[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Dec 3 21:29:50 2020 +1100

    AP_NavEKF2: move EKF2 message ids into AP_NavEKF2

[33mcommit 7ba03fe32d34300faa6fa2245a50f23f96d85991[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Dec 3 21:29:50 2020 +1100

    AP_Logger: move EKF2 message ids into AP_NavEKF2

[33mcommit 00ac8391c02c803692b616e19d0ff6e055d4a6f5[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Dec 3 21:28:18 2020 +1100

    AP_NavEKF2: move EKF2 logging structures into EKF2 LogStructure.h

[33mcommit 346572c390c0e0554e7b4bae451417974daa66d0[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Dec 3 21:28:18 2020 +1100

    AP_Logger: move EKF2 logging structures into EKF2 LogStructure.h

[33mcommit 58f65707551ab9dcfa370b1bf3cdc2057edf9f81[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Dec 3 21:13:12 2020 +1100

    AP_NavEKF3: stop using QUAT_* defines from AP_Logger/LogStructure.h
    
    The EKFs logging is independant so we can kill EKF2...
    
    Also use correct structure for logging XKF1; these structures were
    identical.

[33mcommit a2fe846a5f0b8c3ec237e424aa17946e1c40f72c[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Mon Dec 7 13:47:59 2020 +0900

    AR_WPNav: apply_speed_min used for overshoot limits
    
    speed_min is applied to overshoot_speed_max only instead of des_speed_lim
    so that the target doesn't immediately jump to the minimum.
    also constify apply_speed_min

[33mcommit 62a02f7c87d4a22d893d9850aa3b665eb76ddde2[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Wed Dec 2 14:02:04 2020 +0900

    Rover: calc_speed_nudge uses larger of pilot input and wpnav speed target

[33mcommit a977abac2d1c107a20f9d5bcf4ebaefac01473bd[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Wed Dec 2 10:31:38 2020 +0900

    Rover: fix pivot turns

[33mcommit e75c5722094c8b96bb49b7efe12a8f3d2d0d5a86[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Wed Dec 2 09:38:16 2020 +0900

    AR_WPNav: remove redundant private specifier

[33mcommit b4de6fb56a976d4a85d3419d55d1d73e0a6a361e[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 1 16:25:09 2020 +1100

    HAL_ChibiOS: added new option DEFAULTGPIO for hwdef.dat
    
    this allows ESD issues to be avoided by pulling all unused pins low

[33mcommit 19104b5c203c221cc639b2800f79f244100be660[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 1 14:52:47 2020 +1100

    Rover: moved init_safety to AP_Vehicle

[33mcommit aca46c177dbef1cb34ec347f3559ad4198d121e3[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 1 14:52:46 2020 +1100

    ArduSub: moved init_safety to AP_Vehicle

[33mcommit 2d0201855ed7e93cdac7149b7a084eb38e3b0ea1[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 1 14:52:46 2020 +1100

    ArduPlane: moved init_safety to AP_Vehicle

[33mcommit 0329a46b4ac4a08e6843a80826e32e0019f6c5f1[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 1 14:52:46 2020 +1100

    ArduCopter: moved init_safety to AP_Vehicle

[33mcommit e953bdb6e09d5bba00267debe15d21c68fb60251[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 1 14:52:46 2020 +1100

    AntennaTracker: moved init_safety to AP_Vehicle

[33mcommit a1c05e74b5c071a4b3cf47e0255cd5ac7ec5ce89[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 1 14:52:29 2020 +1100

    AP_Vehicle: call init_safety after first loop has run
    
    this fixes a bug where servos can be driven to an out of range value
    if PWM output happens before first loop has completed
    
    thanks to Kris for reporting

[33mcommit 5fae2652ab8efef1e6e78a533826bf8ffcb46bda[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Mon Jul 27 13:28:20 2020 +1000

    ArduPlane: let AHRS get the airspeed sensor from the singleton

[33mcommit 7bf7402561be750451aa1826b4826eec26f4baaa[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Mon Jul 27 13:28:20 2020 +1000

    AP_RCTelemetry: get airspeed sensor from singleton not AHRS object

[33mcommit 47f0ab7f9030859f336e7fb12b2121329b61af16[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Mon Jul 27 13:28:20 2020 +1000

    AP_LTM_Telem: get airspeed sensor from singleton not AHRS object

[33mcommit ee43663c7a8af3e49b18db29a9350821f0537f86[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Mon Jul 27 13:28:20 2020 +1000

    AP_Frsky_Telem: get airspeed sensor from singleton not AHRS object

[33mcommit 55cb3e8ef01f1364463f8010b592e1d5fd9a93ee[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Mon Jul 27 13:28:20 2020 +1000

    AP_AHRS: get airspeed sensor from singleton not AHRS object

[33mcommit f44e4aaefbdbebee9c22d768c489f44d5635a463[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Sun Dec 6 14:37:00 2020 +1100

    HAL_ChibiOS: always set STM32_DMA_REQUIRED for non-bootloader
    
    this fixes an issue for uart-only AP_Periph builds

[33mcommit e5423a3cf66d9228e1d84d8e7ff9e891766334fc[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Mon Dec 7 22:07:21 2020 +1100

    SITL: add terarangertower simulator

[33mcommit 5e2bd6d9ecba7144f60ba6caeef5d8f8ddff472c[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Mon Dec 7 22:07:21 2020 +1100

    AP_HAL_SITL: add terarangertower simulator

[33mcommit bd5c34f6268a1bbf89323b38b2783a98ec2c2e5a[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Wed Aug 12 12:59:20 2020 +1000

    SITL: improve instructions for using simulated RPLidarA2 sensor

[33mcommit 7d232b24d64cc823e0707fbdbf5c6fc12411a2cb[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Wed Aug 12 12:58:15 2020 +1000

    SITL: improve simulated serial proximity sensor
    
    SITL: rename measure_distance_at_angle to include '_bf'

[33mcommit b21fdb77434736a2a0f860b777f94ec819fc03a6[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Tue Nov 24 21:58:38 2020 +1100

    AP_Generator: use enum class For Battery Failsafe

[33mcommit 00a8a8fe8e1eb1cf1082aaefc21965a9ef325b9a[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Fri Oct 23 12:33:03 2020 +1100

    AP_BattMonitor: use enum class For Battery Failsafe

[33mcommit 0fca126d065c3bea35b39ee6b40bd29ee207c4f9[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Sun Dec 6 21:59:00 2020 +1100

    AP_AHRS: mark get_hagl as WARN_IF_UNUSED

[33mcommit 8658023dadc89c992288ad6195deb720319f5fda[m
Author: Hwurzburg <hwurzburg@yahoo.com>
Date:   Wed Dec 2 20:13:25 2020 -0600

    Plane: Add lower CHECK_SCALE defaults for QuadPlane

[33mcommit 768e3e79314191406798981dd7ee0fedc29d6cd8[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Sun Dec 6 20:46:09 2020 +1100

    autotest: adjust Vicon test for new PREARM-checking code
    
    The new check that the prearms-passing bit from the autopilot
    indicated prearms have passed was failing here because the yaw isn't
    alighed until we frob channel 7.
    
    The intent of the prearm seems ot have been to ensure we can get a
    global position - that can be accomplished by polling the home position.

[33mcommit 9207bd8a8ac0bb39c6e77cd8758c7318be5cff98[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Sun Dec 6 14:24:40 2020 +1100

    autotest: remove armability check from compass calibration test
    
    The new prearm-checking code has shown that we're not actually armable
    after all!
    
    Even the new prearm bit won't tell you if you can arm - you have to arm
    to test that!

[33mcommit 087300749c4537c81913c158296b8858c6ad9857[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Sun Dec 6 12:49:31 2020 +1100

    autotest: ensure we have position without being armable for compass cal check

[33mcommit 38e324f1413e44c131e641ebd1dc1fd05290b3d9[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Sun Dec 6 11:59:19 2020 +1100

    autotest: do not check prearm bit in dataflash-over-mavlink
    
    We won't be armable - but the other checks we make will ensure we get
    the error we are looking for
    
    Also use a more reliable way of draining the data from the autopilot

[33mcommit 5707d8ecc0f1f44ca410220ef386270a6a3e423c[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Sun Dec 6 10:33:06 2020 +1100

    autotest: check new MAV_SYS_STATUS_PREARM_CHECK in wait_ready_to_arm

[33mcommit 013b39d2a6b5dd8707938f7d975ddbcb1b68074c[m
Author: chobits <chobits@itri.org.tw>
Date:   Wed Aug 12 15:01:27 2020 +0800

    AP_NavEKF3: fix ext nav vel timestamp cal

[33mcommit 1c57eed66caf259b2bb6ab42ba6df8f0ce363f2a[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Sat Dec 5 11:20:26 2020 +1100

    AP_RangeFinder: remove unused voltage_mv_orient method
    
    This is really backend-specific data and shouldn't be exposed

[33mcommit 97cbf17d01011d65f8c9bae5bd63719b906bdd7b[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Oct 9 20:30:38 2020 +1100

    Tools: added HitecMosaic to autobuild

[33mcommit cb34025fef53189075f5b1f04c5df71226b535b4[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Oct 9 12:01:44 2020 +1100

    Tools: added HitecMosaic bootloader

[33mcommit b1e7b508dba5327220ddafa568bd043cb33caa63[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu May 21 07:59:29 2020 +1000

    HAL_ChibiOS: added HitecMosaic

[33mcommit 9fa60be1ba8d695fdcff96c4ec012cfe94e46a2e[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Jul 9 07:30:45 2020 +1000

    AP_Periph: break out node status send

[33mcommit 1a4f09402523d9114713a05fca98e724eb194f31[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Sep 24 07:19:52 2020 +1000

    AP_GPS: allow hwdef override of default for GPS_COM_PORT

[33mcommit 92bcc7667cbf46111df6c80caaf56f98c7693d4d[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu May 21 08:56:29 2020 +1000

    AP_GPS: allow for SBF GPS on F3 AP_Periph

[33mcommit 6ce9207394b4a144caa75a774f7c0449155bd02b[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu May 21 07:59:47 2020 +1000

    AP_Periph: set HitecMosaic as AP_Periph target

[33mcommit b4e8985109676a8328f6bf4ca3ac32927a9be061[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Sun Dec 6 13:01:34 2020 +1100

    mavlink: reference new master commit

[33mcommit 1723cf8efbba85bb3737fc2efc5f3f74eab59f91[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Dec 2 06:35:12 2020 +1100

    HAL_ChibiOS: reduce SPI clock on MatekH743 mpu6k to 2MHz
    
    this fixes regular transfer errors

[33mcommit dac5aca40e1c622b4aacaba2ed084e06c9c1ac7c[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Sat Dec 5 17:51:34 2020 +1100

    ArduCopter: move logging of LandingGear event into LandingGear
    
    Less code and Plane will get the event logged too.

[33mcommit bacbe2101160a4309b76188d0dadab44ccb76bef[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Sat Dec 5 17:51:34 2020 +1100

    AP_LandingGear: move logging of LandingGear event into LandingGear
    
    Less code and Plane will get the event logged too.

[33mcommit b8c58bd90012107e2af1f5e204f0c7c7abe19151[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Wed Oct 7 20:41:27 2020 +0900

    Copter: payload place fixups

[33mcommit 000a2b17c3094b7a7b37013cff42474390accbbe[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Fri Dec 4 09:05:52 2020 +0900

    AP_NavEKF_Source: remove unused setVelZSource

[33mcommit 6bc8ff2ee848486bdd859e66142e3117b2dee011[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Fri Dec 4 14:14:59 2020 +1100

    SITL: factor out an I2C command/response class from simulated MaxSonar sensor

[33mcommit 1c19a228acbade54f2b5e200423249bb0d3ee3b7[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Fri Dec 4 11:14:00 2020 +1100

    Sub: nail GND_EXT_BUS down to bus 1 on Pixhawk1

[33mcommit 6e5e73ef2c15f7a664dfd5ea254824303f20cb8e[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Wed Dec 2 21:15:44 2020 +1100

    Sub: initialise celsius library on configured (barometer) external bus

[33mcommit 6f7fbece4944889028dcf6e40a53828d082ef9b5[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Wed Dec 2 21:15:09 2020 +1100

    AP_Baro: add accessor for external bus parameter

[33mcommit 771666ee52c5cfa3b05d17b33ebcfba370e9c4a7[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Wed Dec 2 21:03:15 2020 +1100

    AP_Baro: correct i2c transfer invocation in KellerLD
    
    This allows the device to work on boards which are not Pixhawk1.  For
    reasons yet to be determined.

[33mcommit 64e1784cb7581ac45c751904d9de922aca7d0773[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Tue Dec 1 22:17:26 2020 +1100

    Sub: use set_default_by_name for GND_EXT_BUS

[33mcommit 8b5ff1a6de968f19d0cc65878f63a4c67db0abad[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 3 16:41:07 2020 +1100

    GCS_MAVLink: enable GCS_SEND_TEXT() to send as CAN LogMessage messages

[33mcommit e235fd311ec7124424a3539986d0c05f51852b03[m
Author: Tom Pittenger <tom.pittenger@krausaerospace.com>
Date:   Wed Dec 2 16:51:42 2020 -0800

    AP_HAL_ChibiOS: fixed comment in script file

[33mcommit 6765265a3b9a6607ad2713834ebb8d5eb8d7dbd9[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Dec 2 10:40:13 2020 +1100

    AP_Periph: switched to 1kHz clock for f303-periph
    
    and use CAN RX buffer size of 64.
    
    This makes for more efficient CPU usage on f3, and fixes an issue with
    lost CAN parameter replies causing timeouts in the CAN parameter
    download protocol

[33mcommit 287e9350a5ea420301fd2e0ca322b827941bc190[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Dec 3 10:43:39 2020 +1100

    AP_NavEKF3: move log message IDs in from AP_Logger LogStructure

[33mcommit ea36a84b53bd0dd33f3ca9706c61c02081366637[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Dec 3 10:25:43 2020 +1100

    AP_Logger: move EK3 log message IDs into AP_NavEKF3 log structure

[33mcommit 79109458c23585c4a74727a80eef3aabce158d79[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Wed Dec 2 11:49:19 2020 +1100

    AP_NavEKF3: move EKF3 logging structures into EKF3 LogStructure.h

[33mcommit f2b2998f29b42230b006475c5c9c489c80aac254[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Wed Dec 2 11:49:19 2020 +1100

    AP_Logger: move EKF3 logging structures into EKF3 LogStructure.h

[33mcommit 64f4b078a62d4d97cde5d7caf3395352f0cc134c[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Wed Dec 2 10:32:39 2020 +1100

    AP_Logger: remove unused log_EKF* structures

[33mcommit be52e642f7c1fe43d21166e65641978915c5f7f8[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Thu Dec 3 09:53:27 2020 +1100

    autotest: adjust Replay gps bit to make final logfile replayable

[33mcommit d0236ceac991611c4f9ff8ff5a5e3e13c1463a9d[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Wed Dec 2 19:23:38 2020 +1100

    Replay: check_replay_branch.py: inspect all logs for replayability

[33mcommit b289701d204d6c190d7da7a676f69d6c0027b32b[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Dec 3 14:47:07 2020 +1100

    HAL_ChibiOS: removed SPI devices on f103-periph
    
    these are unused and saves us a couple of k of flash

[33mcommit cd6ddf7d4fcc3a75a5ef687efab8bf1c119b7a2e[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 1 14:22:34 2020 +1100

    Plane: fixed disable of geofence on quadplane landing
    
    fixes #15917

[33mcommit 52f61c7ac116b52ab969bb0a103931734f9d04c3[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 1 14:06:45 2020 +1100

    Plane: make FENCE_AUTOENABLE an AP_Enum

[33mcommit 084b589f3ab6e7325dc35743e04330b6101cab3b[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 1 14:06:22 2020 +1100

    AP_Param: added template class AP_Enum for enum AP_Int8 values

[33mcommit 32edb6d0cdb6cd66ae65254548557ce2d3a37d0d[m
Author: Andy Piper <github@andypiper.com>
Date:   Sat Nov 21 16:00:29 2020 +0000

    AP_Filesystem: add support for @SYS/dma.txt for DMA contention

[33mcommit cf2602f91dd6d076d977d89739533fdd3c86000d[m
Author: Andy Piper <github@andypiper.com>
Date:   Sat Nov 21 16:00:11 2020 +0000

    AP_HAL_ChibiOS: add support for @SYS/dma.txt for DMA contention

[33mcommit d2e01005ee860315b3a0f92058eb496e3394512b[m
Author: Andy Piper <github@andypiper.com>
Date:   Sat Nov 21 15:59:41 2020 +0000

    AP_HAL: add support for @SYS/dma.txt for DMA contention

[33mcommit c5c810b724ce1aa60e68aafa0d56ab16a2b45cac[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Tue Dec 1 13:24:49 2020 +1100

    AP_NavEKF2: use structures for logging GSF data
    
    This makes it look like EKF2 and is marginally more efficient.

[33mcommit f94f51d9d345dc8eef99f4e25d9093cd8ccae9c3[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Tue Dec 1 13:17:02 2020 +1100

    AP_NavEKF2: move log message metadata to be above the structure
    
    This is the pattern we are adopting elsewhere to try to keep things
    related as much as possible.

[33mcommit c4a644100d06239f2e41381cfdc081a0cc46c31d[m
Author: vierfuffzig <tunella@gmx.de>
Date:   Sat Nov 21 19:08:56 2020 +0100

    AP_OSD: refactor current panel and add 2nd instance

[33mcommit 54bae68e02d4db76406869e55f3ecc494724341c[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Tue Dec 1 21:26:07 2020 +1100

    AP_DAL: correct rangefinder get_backend range check

[33mcommit 1bef41b42e8d7762c0961c487134d5bd9b37bb9e[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Tue Dec 1 09:11:28 2020 +1100

    AP_OSD: fixed param metadata for several OSD settings
    
    only found now we build OSD for SITL

[33mcommit 42b1d2135acc03e2de19f94615005cd5cbcdb595[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Sun Oct 4 14:48:52 2020 +1100

    AP_OSD: fixed enable of OSD on boards with no built-in OSD
    
    this fixes MSP enable

[33mcommit 28e769a79e78a08b78a7a0f829871016b39137ec[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Sat Nov 28 10:27:58 2020 +0900

    Tools: link AP_WheelEncoder for all vehicles

[33mcommit 7f15b7b126f1e2871fd99733fb53f3b023038a91[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Fri Nov 27 17:21:34 2020 +0900

    AP_NavEKF_Source: prearm check of wheelencoders

[33mcommit 7d319f8059a8edf09debaf6fbf4f48b97480c6ff[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Fri Nov 27 17:21:12 2020 +0900

    AP_DAL: add wheelencoder_enabled

[33mcommit 3984cdd823ba19e9dd2dfe10b29492937d4934b2[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Fri Nov 27 17:17:01 2020 +0900

    AP_WheelEncoder: add singleton

[33mcommit 38dd3b92094b517bc200329a993e51a9b4e2c314[m
Author: Phillip Kocmoud <phil@mrobotics.io>
Date:   Mon Nov 30 20:51:02 2020 -0600

    hwdef: add mRo Control Zero Classic

[33mcommit c530df7e31e62e97b4a7e9693917ce2ff16bc23c[m
Author: yaapu <alex.apostoli@gmail.com>
Date:   Sat Nov 28 11:34:33 2020 +0100

    AP_RCProtocol: added fport2 24ch test

[33mcommit 7e9458b53a5bf950ff57f2b7a9d32c7c564847d5[m
Author: yaapu <alex.apostoli@gmail.com>
Date:   Sat Nov 28 11:26:57 2020 +0100

    AP_RCProtocol: fport2 fixes
    
    Fixed 16ch fport2 telemetry and enabled bidir support.
    Fixed 24ch fport2, had to disable telemetry on 24ch for timing is too tight and telemetry would be unreliable.

[33mcommit bef522387a96d991b611bff91f45a97224142c2c[m
Author: Phillip Kocmoud <phil@mrobotics.io>
Date:   Mon Nov 30 20:18:06 2020 -0600

    hwdef: add mRo Control Zero H7

[33mcommit d600b874544e99a247df10341a924e6e0de33d90[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Tue Nov 24 16:44:09 2020 +1100

    AP_NavEKF2: make logging a core concern

[33mcommit 02ba500d67ee9da8df44379fc474db9917fc90a7[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Thu Nov 26 10:08:24 2020 +0900

    AP_Scripting: add ahrs-source-gps-wheelencoders.lua
    
    supports automatically switching between GPS and wheel encoders based on GPS speed accuracy and vertical velocity innovation

[33mcommit d984ddc1638ded3b408859218a9896aeb0d3446c[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Nov 30 08:43:05 2020 +1100

    Plane: apply circular limits to QLOITER pilot angles
    
    This uses the same logic as Copters get_pilot_desired_angle() to apply
    a circular limit and the limits in Q_ANGLE_MAX and Q_LOIT_ANG_MAX to
    loiter pilot angles.
    
    Co-authored-by: Kris <kris968658@gmail.com>

[33mcommit eb88e6a37c6dc2e8df8d1238e882c31fbb68ceef[m
Author: Michel Pastor <shellixyz@gmail.com>
Date:   Sat Nov 28 21:45:25 2020 +0100

    AP_OSD: Fix vertical speed varying length

[33mcommit 88b5523d475af6b17ee0766890e71bc63a3cb4ce[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Nov 30 10:47:32 2020 +1100

    AP_UAVCAN: added logging of UAVCAN LogMessage messages
    
    this allows us to log internal errors from nodes into main flight
    controller log

[33mcommit b2885e3e327d212fd47d43d0ea22f778a80794c9[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Nov 30 10:46:55 2020 +1100

    AP_CANManager: exposed can log level

[33mcommit cf22caa7ef617bd45322e155cec1695fe40ca8ed[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Nov 30 10:16:05 2020 +1100

    HAL_ChibiOS: raise stack limits in f303 peripherals

[33mcommit 3ba46d5bd99aa5706d84d2edca66f442b529ecb0[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Nov 30 10:15:50 2020 +1100

    HAL_ChibiOS: enable reporting of watchdog reset on AP_Periph

[33mcommit 0c2770a8d463cc12cea4587516cb856d9134143a[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Nov 30 10:14:56 2020 +1100

    AP_Periph: added DEBUG parameter for displaying stack usage

[33mcommit ba69cd72c9c2fe8b718c928cc29e2f8329fba454[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Nov 30 09:10:21 2020 +1100

    HAL_ChibiOS: improved stack checking and stack display
    
    display both ISR stack and thread stacks. Show total stack sizes as
    well as amount of stack remaining

[33mcommit 84eac7642baa7404d1018575eb5c3864271de2f7[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Mon Nov 30 06:53:49 2020 +1100

    HAL_ChibiOS: improved stack checking

[33mcommit 2d459dccc378ff7ad4ec860abf469459594a36de[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Sat Nov 28 15:21:11 2020 +1100

    HAL_ChibiOS: reduced stack usage in CAN RX handler

[33mcommit c778d14fd335f21cfe98e3dd390cd9bfae0150b3[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Sat Nov 28 15:20:52 2020 +1100

    HAL_ChibiOS: enable stack checking on f303 boards

[33mcommit 573cd6db6d88bf607dc5e6636d260db117ad6ca0[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Sat Nov 28 15:19:14 2020 +1100

    HAL_ChibiOS: adjust MAIN_STACK for more ISR stack
    
    we need more stack to deal with interrupt nesting between CAN, system
    timer and serial interrupts

[33mcommit 52a90e7a3364fd91cb487688b63998c5c3ec60f1[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Sat Nov 28 15:18:35 2020 +1100

    HAL_ChibiOS: fixed monitor thread with no logging

[33mcommit 2a29b0fcf54cc6ff9571975f95ef60d841c032ad[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri Nov 27 13:13:19 2020 +1100

    HAL_ChibiOS: fixed AP_Periph build with --enable-asserts

[33mcommit d586a2d8537b0407f0bf372fcd686db05480fd0e[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Nov 26 15:10:27 2020 +1100

    AP_Periph: added magic FLASH_BOOTLOADER=42/43 values
    
    when FLASH_BOOTLOADER=42 we will enter into a lockup loop, which will
    trigger a watchdog. This is useful for testing watchdog support
