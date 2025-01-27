.class Lcom/sleepycat/je/evictor/DummyAllocator;
.super Ljava/lang/Object;
.source "DummyAllocator.java"

# interfaces
.implements Lcom/sleepycat/je/evictor/OffHeapAllocator;


# static fields
.field static final INSTANCE:Lcom/sleepycat/je/evictor/DummyAllocator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/sleepycat/je/evictor/DummyAllocator;

    invoke-direct {v0}, Lcom/sleepycat/je/evictor/DummyAllocator;-><init>()V

    sput-object v0, Lcom/sleepycat/je/evictor/DummyAllocator;->INSTANCE:Lcom/sleepycat/je/evictor/DummyAllocator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public allocate(I)J
    .locals 2
    .param p1, "size"    # I

    .line 37
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public copy(JIJII)V
    .locals 0
    .param p1, "fromMemId"    # J
    .param p3, "fromMemOff"    # I
    .param p4, "toMemId"    # J
    .param p6, "toMemOff"    # I
    .param p7, "len"    # I

    .line 66
    return-void
.end method

.method public copy(JI[BII)V
    .locals 0
    .param p1, "memId"    # J
    .param p3, "memOff"    # I
    .param p4, "buf"    # [B
    .param p5, "bufOff"    # I
    .param p6, "len"    # I

    .line 57
    return-void
.end method

.method public copy([BIJII)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "bufOff"    # I
    .param p3, "memId"    # J
    .param p5, "memOff"    # I
    .param p6, "len"    # I

    .line 61
    return-void
.end method

.method public free(J)I
    .locals 1
    .param p1, "memId"    # J

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getUsedBytes()J
    .locals 2

    .line 32
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setMaxBytes(J)V
    .locals 0
    .param p1, "maxBytes"    # J

    .line 28
    return-void
.end method

.method public size(J)I
    .locals 1
    .param p1, "memId"    # J

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public totalSize(J)I
    .locals 1
    .param p1, "memId"    # J

    .line 52
    const/4 v0, 0x0

    return v0
.end method
