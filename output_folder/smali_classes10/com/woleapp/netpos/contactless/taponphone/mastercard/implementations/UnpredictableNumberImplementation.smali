.class public Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/UnpredictableNumberImplementation;
.super Ljava/lang/Object;
.source "UnpredictableNumberImplementation.java"

# interfaces
.implements Lcom/mastercard/terminalsdk/listeners/UnpredictableNumberProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateRandomBytes(I)[B
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 14
    .local v0, "randomGenerator":Ljava/security/SecureRandom;
    new-array v1, p1, [B

    .line 15
    .local v1, "randomNumber":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 19
    array-length v2, v1

    array-length v3, v1

    rem-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 21
    .local v2, "checkBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 23
    return-object v1
.end method
