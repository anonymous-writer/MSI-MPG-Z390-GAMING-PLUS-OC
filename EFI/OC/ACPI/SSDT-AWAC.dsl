/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20201113 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/OPENCORE/EFI/OC/ACPI/SSDT-AWAC.aml, Tue Jan  5 07:49:21 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000065 (101)
 *     Revision         0x02
 *     Checksum         0x03
 *     OEM ID           "ACDT"
 *     OEM Table ID     "AWAC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "AWAC", 0x00000000)
{
    External (STAS, IntObj)

    If (_OSI ("Darwin"))
    {
        Scope (_SB)
        {
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (_OSI ("Darwin"))
                {
                    STAS = One
                }
            }
        }
    }
    Else
    {
        Return (_OSI (Arg0))
    }
}

