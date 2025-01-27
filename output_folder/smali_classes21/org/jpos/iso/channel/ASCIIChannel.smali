.class public Lorg/jpos/iso/channel/ASCIIChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "ASCIIChannel.java"


# static fields
.field private static final ten:Ljava/math/BigInteger;


# instance fields
.field protected lengthDigits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/jpos/iso/channel/ASCIIChannel;->ten:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lorg/jpos/iso/channel/ASCIIChannel;->lengthDigits:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lorg/jpos/iso/channel/ASCIIChannel;->lengthDigits:I

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;)V
    .locals 1
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lorg/jpos/iso/channel/ASCIIChannel;->lengthDigits:I

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V
    .locals 1
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p2, "serverSocket"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lorg/jpos/iso/channel/ASCIIChannel;->lengthDigits:I

    .line 83
    return-void
.end method


# virtual methods
.method public getLengthDigits()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/jpos/iso/channel/ASCIIChannel;->lengthDigits:I

    return v0
.end method

.method protected getMessageLength()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "l":I
    iget v1, p0, Lorg/jpos/iso/channel/ASCIIChannel;->lengthDigits:I

    new-array v1, v1, [B

    .line 110
    .local v1, "b":[B
    :goto_0
    if-nez v0, :cond_1

    .line 111
    iget-object v2, p0, Lorg/jpos/iso/channel/ASCIIChannel;->serverIn:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    iget v4, p0, Lorg/jpos/iso/channel/ASCIIChannel;->lengthDigits:I

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 113
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lorg/jpos/iso/channel/ASCIIChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 115
    iget-object v2, p0, Lorg/jpos/iso/channel/ASCIIChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/jpos/iso/ISOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid message length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    return v0
.end method

.method protected sendMessageLength(I)V
    .locals 5
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    sget-object v0, Lorg/jpos/iso/channel/ASCIIChannel;->ten:Ljava/math/BigInteger;

    iget v1, p0, Lorg/jpos/iso/channel/ASCIIChannel;->lengthDigits:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 97
    .local v0, "maxLen":I
    const-string v1, ")"

    if-gt p1, v0, :cond_1

    .line 99
    if-ltz p1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/jpos/iso/channel/ASCIIChannel;->serverOut:Ljava/io/DataOutputStream;

    int-to-long v2, p1

    iget v4, p0, Lorg/jpos/iso/channel/ASCIIChannel;->lengthDigits:I

    invoke-static {v2, v3, v4}, Lorg/jpos/iso/ISOUtil;->zeropad(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 102
    return-void

    .line 100
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid negative length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len exceeded ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 136
    invoke-super {p0, p1}, Lorg/jpos/iso/BaseChannel;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 137
    const-string v0, "length-digits"

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/channel/ASCIIChannel;->setLengthDigits(I)V

    .line 138
    return-void
.end method

.method public setLengthDigits(I)V
    .locals 0
    .param p1, "len"    # I

    .line 86
    iput p1, p0, Lorg/jpos/iso/channel/ASCIIChannel;->lengthDigits:I

    return-void
.end method
