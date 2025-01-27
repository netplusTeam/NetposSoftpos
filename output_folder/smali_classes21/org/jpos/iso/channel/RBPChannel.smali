.class public Lorg/jpos/iso/channel/RBPChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "RBPChannel.java"


# static fields
.field static final LAST:[B

.field static final MORE:[B

.field static final PROTOCOL_IDENTIFIER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/jpos/iso/channel/RBPChannel;->PROTOCOL_IDENTIFIER:[B

    .line 31
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/jpos/iso/channel/RBPChannel;->MORE:[B

    .line 32
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jpos/iso/channel/RBPChannel;->LAST:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x30t
        0x4at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMessageLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x6

    new-array v1, v0, [B

    .line 41
    .local v1, "b":[B
    iget-object v2, p0, Lorg/jpos/iso/channel/RBPChannel;->serverIn:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 42
    const/4 v0, 0x2

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method protected sendMessageLength(I)V
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/jpos/iso/channel/RBPChannel;->serverOut:Ljava/io/DataOutputStream;

    sget-object v1, Lorg/jpos/iso/channel/RBPChannel;->PROTOCOL_IDENTIFIER:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 35
    iget-object v0, p0, Lorg/jpos/iso/channel/RBPChannel;->serverOut:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 36
    iget-object v0, p0, Lorg/jpos/iso/channel/RBPChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 37
    iget-object v0, p0, Lorg/jpos/iso/channel/RBPChannel;->serverOut:Ljava/io/DataOutputStream;

    sget-object v1, Lorg/jpos/iso/channel/RBPChannel;->LAST:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 38
    return-void
.end method
