.class public Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreResponse"
.end annotation


# instance fields
.field private final cbvlsn:Lcom/sleepycat/je/utilint/VLSN;

.field private final logProviders:[Lcom/sleepycat/je/rep/impl/RepNodeImpl;

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;[Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "cbvlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "logProviders"    # [Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 971
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 972
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->cbvlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 973
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->logProviders:[Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 974
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 976
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 977
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 978
    .local v0, "vlsnSequence":J
    new-instance v2, Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->cbvlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 979
    invoke-direct {p0, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->getRepNodeImplArray(Ljava/nio/ByteBuffer;)[Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->logProviders:[Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 980
    return-void
.end method

.method private getGroupFormatVersion()I
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->getVersion()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method private getRepNodeImplArray(Ljava/nio/ByteBuffer;)[Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1019
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    new-array v0, v0, [Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1020
    .local v0, "ra":[Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->getGroupFormatVersion()I

    move-result v1

    .line 1021
    .local v1, "groupFormatVersion":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1022
    nop

    .line 1023
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->getByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 1022
    invoke-static {v3, v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->deserializeNode([BI)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1021
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1025
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private getRepNodeImplArraySize([Lcom/sleepycat/je/rep/impl/RepNodeImpl;)I
    .locals 6
    .param p1, "ra"    # [Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1029
    const/4 v0, 0x4

    .line 1030
    .local v0, "size":I
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->getGroupFormatVersion()I

    move-result v1

    .line 1031
    .local v1, "groupFormatVersion":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 1032
    .local v4, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    nop

    .line 1033
    invoke-static {v4, v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->serializeBytes(Lcom/sleepycat/je/rep/impl/RepNodeImpl;I)[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v0, v5

    .line 1031
    .end local v4    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1036
    :cond_0
    return v0
.end method

.method private putRepNodeImplArray(Ljava/nio/ByteBuffer;[Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "ra"    # [Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1009
    array-length v0, p2

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 1010
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->getGroupFormatVersion()I

    move-result v0

    .line 1011
    .local v0, "groupFormatVersion":I
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 1012
    .local v3, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    nop

    .line 1014
    invoke-static {v3, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->serializeBytes(Lcom/sleepycat/je/rep/impl/RepNodeImpl;I)[B

    move-result-object v4

    .line 1012
    invoke-virtual {p0, p1, v4}, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->putByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 1011
    .end local v3    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1016
    :cond_0
    return-void
.end method


# virtual methods
.method getCBVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->cbvlsn:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method getLogProviders()[Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->logProviders:[Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 1051
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->RESTORE_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method protected putWireFormat(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 992
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    if-ne v0, v1, :cond_0

    .line 993
    move-object v0, p2

    check-cast v0, [Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    check-cast v0, [Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->putRepNodeImplArray(Ljava/nio/ByteBuffer;[Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    goto :goto_0

    .line 995
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->putWireFormat(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    .line 997
    :goto_0
    return-void
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 984
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->cbvlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->logProviders:[Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected wireFormatSize(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1001
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    if-ne v0, v1, :cond_0

    .line 1002
    move-object v0, p1

    check-cast v0, [Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    check-cast v0, [Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->getRepNodeImplArraySize([Lcom/sleepycat/je/rep/impl/RepNodeImpl;)I

    move-result v0

    return v0

    .line 1004
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->wireFormatSize(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
