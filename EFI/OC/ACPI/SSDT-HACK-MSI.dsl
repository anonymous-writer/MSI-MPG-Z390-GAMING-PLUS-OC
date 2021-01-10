/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20201113 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/OPENCORE/EFI/OC/ACPI/SSDT-HACK-MSI.aml, Tue Jan  5 07:48:08 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003E5 (997)
 *     Revision         0x02
 *     Checksum         0x97
 *     OEM ID           "hack"
 *     OEM Table ID     "HACK-MSI"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "HACK-MSI", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)

    If (_OSI ("Darwin"))
    {
        Scope (\_SB.PCI0)
        {
            Device (IETM)
            {
                Name (_ADR, 0x00120000)  // _ADR: Address
                Name (IETM, One)
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x0C)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "device_type", 
                        Buffer (0x13)
                        {
                            "Thermal-Controller"
                        }, 

                        "model", 
                        Buffer (0x23)
                        {
                            "Cannon Lake PCH Thermal Controller"
                        }, 

                        "name", 
                        Buffer (0x23)
                        {
                            "Cannon Lake PCH Thermal Controller"
                        }, 

                        "AAPL,slot-name", 
                        Buffer (0x10)
                        {
                            "Internal@0,18,0"
                        }, 

                        "compatible", 
                        Buffer (0x0D)
                        {
                            "pci8086,9d21"
                        }
                    })
                }
            }

            Device (XEON)
            {
                Name (_ADR, 0x00080000)  // _ADR: Address
                Name (XEON, One)
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x0A)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "device_type", 
                        Buffer (0x12)
                        {
                            "System peripheral"
                        }, 

                        "model", 
                        Buffer (0x58)
                        {
                            "Xeon E3-1200 v5/v6 / E3-1500 v5 / 6th/7th/8th Gen Core Processor Gaussian Mixture Model"
                        }, 

                        "AAPL,slot-name", 
                        Buffer (0x0F)
                        {
                            "Internal@0,8,0"
                        }, 

                        "compatible", 
                        Buffer (0x0D)
                        {
                            "pci8086,9d21"
                        }
                    })
                }
            }

            Device (SPI)
            {
                Name (_ADR, 0x001F0005)  // _ADR: Address
                Name (SPI, One)
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x0A)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "device_type", 
                        Buffer (0x16)
                        {
                            "Serial bus controller"
                        }, 

                        "model", 
                        Buffer (0x1F)
                        {
                            "Cannon Lake PCH SPI Controller"
                        }, 

                        "AAPL,slot-name", 
                        Buffer (0x10)
                        {
                            "Internal@0,31,5"
                        }, 

                        "compatible", 
                        Buffer (0x0D)
                        {
                            "pci8086,9d21"
                        }
                    })
                }
            }

            Device (RAM)
            {
                Name (_ADR, 0x00140002)  // _ADR: Address
                Name (RAM, One)
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x0A)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "device_type", 
                        Buffer (0x0B)
                        {
                            "RAM memory"
                        }, 

                        "model", 
                        Buffer (0x1C)
                        {
                            "Cannon Lake PCH Shared SRAM"
                        }, 

                        "AAPL,slot-name", 
                        Buffer (0x10)
                        {
                            "Internal@0,20,2"
                        }, 

                        "compatible", 
                        Buffer (0x0D)
                        {
                            "pci8086,9d21"
                        }
                    })
                }
            }
        }
    }
    Else
    {
        Return (_OSI (Arg0))
    }
}

