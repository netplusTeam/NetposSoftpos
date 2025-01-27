.class public Lcom/sleepycat/je/tree/EntryStates;
.super Ljava/lang/Object;
.source "EntryStates.java"


# static fields
.field static final CLEAR_DIRTY_BIT:B = -0x3t

.field static final CLEAR_EMBEDDED_LN_BIT:B = -0x11t

.field static final CLEAR_KNOWN_DELETED_BIT:B = -0x2t

.field static final CLEAR_NO_DATA_LN_BIT:B = -0x21t

.field static final CLEAR_OFFHEAP_DIRTY_BIT:B = -0x5t

.field static final CLEAR_OFFHEAP_PRI2_BIT:B = -0x41t

.field static final CLEAR_PENDING_DELETED_BIT:B = -0x9t

.field static final CLEAR_TRANSIENT_BITS:B = -0x45t

.field static final DIRTY_BIT:B = 0x2t

.field static final EMBEDDED_LN_BIT:B = 0x10t

.field static final KNOWN_DELETED_BIT:B = 0x1t

.field static final NO_DATA_LN_BIT:B = 0x20t

.field static final OFFHEAP_DIRTY_BIT:B = 0x4t

.field static final OFFHEAP_PRI2_BIT:B = 0x40t

.field static final PENDING_DELETED_BIT:B = 0x8t

.field static final TRANSIENT_BITS:B = 0x44t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
