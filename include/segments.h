#ifndef SEGMENTS_H
#define SEGMENTS_H

#ifndef NON_MATCHING
#define SEG_802F9800 0x802F9800
#define SEG_PALETTE  0x803DA800
#define SEG_IMAGE    0x803DAA00
#else
#define SEG_PALETTE  Palettes_VRAM
#define SEG_IMAGE    Images_VRAM
#endif // NON_MATCHING

#endif // SEGMENTS_H

