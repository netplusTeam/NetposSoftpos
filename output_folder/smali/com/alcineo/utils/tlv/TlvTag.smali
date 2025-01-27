.class public final Lcom/alcineo/utils/tlv/TlvTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final acileon:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alcineo/utils/tlv/TlvTag;->acileon:[B

    return-void
.end method

.method public static fromBytes([BI)Lcom/alcineo/utils/tlv/TlvTag;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvException;
        }
    .end annotation

    const-string v0, "data cannot be null"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    const-string v1, "offset out of range"

    invoke-static {p1, v0, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(IILjava/lang/String;)I

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    add-int v3, p1, v0

    array-length v4, p0

    if-ge v3, v4, :cond_1

    aget-byte v3, p0, v3

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    and-int/lit8 v3, v3, 0x1f

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_1

    move v2, v1

    goto :goto_0

    :cond_0
    shr-int/lit8 v3, v3, 0x7

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    add-int v2, p1, v0

    sub-int/2addr v2, v1

    aget-byte v1, p0, v2

    shr-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/alcineo/utils/tlv/TlvException;

    const-string p1, "TlvTag parsing error: expecting one more tag byte, not enough data."

    invoke-direct {p0, p1}, Lcom/alcineo/utils/tlv/TlvException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance v1, Lcom/alcineo/utils/tlv/TlvTag;

    add-int/2addr v0, p1

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/alcineo/utils/tlv/TlvTag;-><init>([B)V

    return-object v1

    :cond_4
    new-instance p0, Lcom/alcineo/utils/tlv/TlvException;

    const-string p1, "TlvTag parsing error: empty data."

    invoke-direct {p0, p1}, Lcom/alcineo/utils/tlv/TlvException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getBytes()[B
.end method

.method public final native getSize()I
.end method

.method public final native getTlvClass()Lcom/alcineo/utils/tlv/TlvClass;
.end method

.method public native hashCode()I
.end method

.method public final native isConstructed()Z
.end method

.method public final native isNull()Z
.end method

.method public native toHexString()Ljava/lang/String;
.end method

.method public native toString()Ljava/lang/String;
.end method
