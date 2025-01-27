.class public Lcom/hivemq/client/internal/util/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field protected final array:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "array"    # [B

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    .line 31
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 47
    if-ne p0, p1, :cond_0

    .line 48
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/util/ByteArray;

    if-nez v0, :cond_1

    .line 51
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/hivemq/client/internal/util/ByteArray;

    .line 54
    .local v0, "that":Lcom/hivemq/client/internal/util/ByteArray;
    iget-object v1, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getEnd()I

    move-result v3

    iget-object v4, v0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/ByteArray;->getStart()I

    move-result v5

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/ByteArray;->getEnd()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/hivemq/client/internal/util/ByteArrayUtil;->equals([BII[BII)Z

    move-result v1

    return v1
.end method

.method protected getEnd()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    array-length v0, v0

    return v0
.end method

.method protected getStart()I
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/hivemq/client/internal/util/ByteArray;->array:[B

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getEnd()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/util/ByteArrayUtil;->hashCode([BII)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/ByteArray;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
