.class public final Lcom/google/crypto/tink/util/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final data:[B


# direct methods
.method private constructor <init>([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "buf",
            "start",
            "len"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/google/crypto/tink/util/Bytes;->data:[B

    .line 78
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-void
.end method

.method public static copyFrom([B)Lcom/google/crypto/tink/util/Bytes;
    .locals 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 38
    if-eqz p0, :cond_0

    .line 41
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([BII)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyFrom([BII)Lcom/google/crypto/tink/util/Bytes;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "data",
            "start",
            "len"
        }
    .end annotation

    .line 54
    if-eqz p0, :cond_0

    .line 57
    new-instance v0, Lcom/google/crypto/tink/util/Bytes;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/crypto/tink/util/Bytes;-><init>([BII)V

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 83
    instance-of v0, p1, Lcom/google/crypto/tink/util/Bytes;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/util/Bytes;

    .line 87
    .local v0, "other":Lcom/google/crypto/tink/util/Bytes;
    iget-object v1, v0, Lcom/google/crypto/tink/util/Bytes;->data:[B

    iget-object v2, p0, Lcom/google/crypto/tink/util/Bytes;->data:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/crypto/tink/util/Bytes;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/crypto/tink/util/Bytes;->data:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/google/crypto/tink/util/Bytes;->data:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 65
    .local v1, "result":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bytes("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/util/Bytes;->data:[B

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Hex;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
