.class Ljavassist/bytecode/CodeIterator$LdcW;
.super Ljavassist/bytecode/CodeIterator$Branch;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LdcW"
.end annotation


# instance fields
.field index:I

.field state:Z


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "p"    # I
    .param p2, "i"    # I

    .line 1366
    invoke-direct {p0, p1}, Ljavassist/bytecode/CodeIterator$Branch;-><init>(I)V

    .line 1367
    iput p2, p0, Ljavassist/bytecode/CodeIterator$LdcW;->index:I

    .line 1368
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/bytecode/CodeIterator$LdcW;->state:Z

    .line 1369
    return-void
.end method


# virtual methods
.method deltaSize()I
    .locals 1

    .line 1381
    const/4 v0, 0x1

    return v0
.end method

.method expanded()Z
    .locals 2

    .line 1373
    iget-boolean v0, p0, Ljavassist/bytecode/CodeIterator$LdcW;->state:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1374
    iput-boolean v1, p0, Ljavassist/bytecode/CodeIterator$LdcW;->state:Z

    .line 1375
    const/4 v0, 0x1

    return v0

    .line 1377
    :cond_0
    return v1
.end method

.method write(I[BI[B)I
    .locals 2
    .param p1, "srcPos"    # I
    .param p2, "code"    # [B
    .param p3, "destPos"    # I
    .param p4, "newcode"    # [B

    .line 1385
    const/16 v0, 0x13

    aput-byte v0, p4, p3

    .line 1386
    iget v0, p0, Ljavassist/bytecode/CodeIterator$LdcW;->index:I

    add-int/lit8 v1, p3, 0x1

    invoke-static {v0, p4, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 1387
    const/4 v0, 0x2

    return v0
.end method
