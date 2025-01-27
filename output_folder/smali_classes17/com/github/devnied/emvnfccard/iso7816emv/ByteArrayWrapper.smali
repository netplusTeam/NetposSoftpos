.class public final Lcom/github/devnied/emvnfccard/iso7816emv/ByteArrayWrapper;
.super Ljava/lang/Object;
.source "ByteArrayWrapper.java"


# instance fields
.field private final data:[B

.field private final hashcode:I


# direct methods
.method private constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/ByteArrayWrapper;->data:[B

    .line 28
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/ByteArrayWrapper;->hashcode:I

    .line 29
    return-void
.end method

.method public static wrapperAround([B)Lcom/github/devnied/emvnfccard/iso7816emv/ByteArrayWrapper;
    .locals 1
    .param p0, "data"    # [B

    .line 32
    if-eqz p0, :cond_0

    .line 35
    new-instance v0, Lcom/github/devnied/emvnfccard/iso7816emv/ByteArrayWrapper;

    invoke-direct {v0, p0}, Lcom/github/devnied/emvnfccard/iso7816emv/ByteArrayWrapper;-><init>([B)V

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 40
    instance-of v0, p1, Lcom/github/devnied/emvnfccard/iso7816emv/ByteArrayWrapper;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/ByteArrayWrapper;->data:[B

    move-object v1, p1

    check-cast v1, Lcom/github/devnied/emvnfccard/iso7816emv/ByteArrayWrapper;

    iget-object v1, v1, Lcom/github/devnied/emvnfccard/iso7816emv/ByteArrayWrapper;->data:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/ByteArrayWrapper;->hashcode:I

    return v0
.end method
