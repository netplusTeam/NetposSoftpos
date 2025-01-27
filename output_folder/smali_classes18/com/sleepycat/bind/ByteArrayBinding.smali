.class public Lcom/sleepycat/bind/ByteArrayBinding;
.super Ljava/lang/Object;
.source "ByteArrayBinding.java"

# interfaces
.implements Lcom/sleepycat/bind/EntryBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sleepycat/bind/EntryBinding<",
        "[B>;"
    }
.end annotation


# static fields
.field private static ZERO_LENGTH_BYTE_ARRAY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sleepycat/bind/ByteArrayBinding;->ZERO_LENGTH_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/ByteArrayBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object p1

    return-object p1
.end method

.method public entryToObject(Lcom/sleepycat/je/DatabaseEntry;)[B
    .locals 6
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 40
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v0

    .line 41
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 42
    sget-object v1, Lcom/sleepycat/bind/ByteArrayBinding;->ZERO_LENGTH_BYTE_ARRAY:[B

    return-object v1

    .line 44
    :cond_0
    new-array v1, v0, [B

    .line 45
    .local v1, "bytes":[B
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v3

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    return-object v1
.end method

.method public bridge synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 0

    .line 24
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/ByteArrayBinding;->objectToEntry([BLcom/sleepycat/je/DatabaseEntry;)V

    return-void
.end method

.method public objectToEntry([BLcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p1, "object"    # [B
    .param p2, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 54
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 55
    return-void
.end method
