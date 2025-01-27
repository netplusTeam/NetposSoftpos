.class public Lorg/bouncycastle/gpg/keybox/KeyBox;
.super Ljava/lang/Object;


# instance fields
.field private final firstBlob:Lorg/bouncycastle/gpg/keybox/FirstBlob;

.field private final keyBlobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/gpg/keybox/KeyBlob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->wrap(Ljava/lang/Object;)Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/gpg/keybox/KeyBox;-><init>(Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/gpg/keybox/Blob;->getInstance(Ljava/lang/Object;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)Lorg/bouncycastle/gpg/keybox/Blob;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lorg/bouncycastle/gpg/keybox/FirstBlob;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/bouncycastle/gpg/keybox/FirstBlob;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/gpg/keybox/Blob;->getInstance(Ljava/lang/Object;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)Lorg/bouncycastle/gpg/keybox/Blob;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/gpg/keybox/Blob;->getType()Lorg/bouncycastle/gpg/keybox/BlobType;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/gpg/keybox/BlobType;->FIRST_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;

    if-eq v3, v4, :cond_0

    check-cast v2, Lorg/bouncycastle/gpg/keybox/KeyBlob;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected second \'FirstBlob\', there should only be one FirstBlob at the start of the file."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBox;->firstBlob:Lorg/bouncycastle/gpg/keybox/FirstBlob;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/gpg/keybox/KeyBox;->keyBlobs:Ljava/util/List;

    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "First blob is not KeyBox \'First Blob\'."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No first blob, is the source zero length?"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->wrap(Ljava/lang/Object;)Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/gpg/keybox/KeyBox;-><init>(Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V

    return-void
.end method


# virtual methods
.method public getFirstBlob()Lorg/bouncycastle/gpg/keybox/FirstBlob;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBox;->firstBlob:Lorg/bouncycastle/gpg/keybox/FirstBlob;

    return-object v0
.end method

.method public getKeyBlobs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/gpg/keybox/KeyBlob;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBox;->keyBlobs:Ljava/util/List;

    return-object v0
.end method
