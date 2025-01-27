.class public final Lcom/alcineo/utils/tlv/TlvLength;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final acileon:[B

.field private final aoleinc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alcineo/utils/tlv/TlvLength;->acileon:[B

    invoke-virtual {p0}, Lcom/alcineo/utils/tlv/TlvLength;->isMultiByte()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x7f

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v2, p1, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/alcineo/utils/tlv/TlvLength;->aoleinc:I

    return-void

    :cond_0
    aget-byte p1, p1, v1

    goto :goto_0
.end method

.method public static fromBytes([BI)Lcom/alcineo/utils/tlv/TlvLength;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-lt v0, v1, :cond_4

    aget-byte v0, p0, p1

    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    new-instance v0, Lcom/alcineo/utils/tlv/TlvLength;

    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alcineo/utils/tlv/TlvLength;-><init>([B)V

    return-object v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    array-length v1, p0

    add-int v2, p1, v0

    add-int/2addr v2, v4

    if-lt v1, v2, :cond_2

    new-instance v0, Lcom/alcineo/utils/tlv/TlvLength;

    invoke-static {p0, p1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alcineo/utils/tlv/TlvLength;-><init>([B)V

    return-object v0

    :cond_2
    new-instance p0, Lcom/alcineo/utils/tlv/TlvException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "TLV Length parsing error: not enough data, need "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alcineo/utils/tlv/TlvException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/alcineo/utils/tlv/TlvException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "TLV Length parsing error: invalid first byte (size): "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alcineo/utils/tlv/TlvException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/alcineo/utils/tlv/TlvException;

    const-string p1, "TLV Length parsing error: no data to parse"

    invoke-direct {p0, p1}, Lcom/alcineo/utils/tlv/TlvException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromValue(I)Lcom/alcineo/utils/tlv/TlvLength;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const/16 v2, 0x7f

    if-gt p0, v2, :cond_1

    new-instance v2, Lcom/alcineo/utils/tlv/TlvLength;

    new-array v0, v0, [B

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    invoke-direct {v2, v0}, Lcom/alcineo/utils/tlv/TlvLength;-><init>([B)V

    return-object v2

    :cond_1
    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_2

    new-instance v0, Lcom/alcineo/utils/tlv/TlvLength;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, -0x7e

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    int-to-short p0, p0

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alcineo/utils/tlv/TlvLength;-><init>([B)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/alcineo/utils/tlv/TlvLength;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, -0x7c

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alcineo/utils/tlv/TlvLength;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final native getBytes()[B
.end method

.method public final native getSize()I
.end method

.method public final native getValue()I
.end method

.method public final native isMultiByte()Z
.end method
