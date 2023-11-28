.section .data

.word 0x80371240       /* PI BSB Domain 1 register */
.word 0x0000000F       /* Clockrate setting */
.word 0x80096400       /* Entrypoint address */
.word 0x0000144A       /* Revision */
.word 0x147E0EDB       /* Checksum 1 */
.word 0x36C5B12C       /* Checksum 2 */
.word 0x00000000       /* Unknown 1 */
.word 0x00000000       /* Unknown 2 */
.ascii "EVANGELION          " /* Internal name */
.word 0x00000000       /* Unknown 3 */
.word 0x0000004E       /* Cartridge */
.ascii "EV"            /* Cartridge ID */
.ascii "J"             /* Country code */
.byte 0x00             /* Version */
