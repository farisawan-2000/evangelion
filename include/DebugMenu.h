
struct DebugEntry {
    char *name;
    char *_004;
    u32 _008;
    u32 _00C;
    u32 _010;
    char **option; // usually NULL, or points to "ON"/"OFF"
};

extern struct DebugEntry gDebugMenuEntries;
