.class synthetic Lorg/bouncycastle/gpg/keybox/Blob$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/gpg/keybox/Blob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bouncycastle$gpg$keybox$BlobType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/bouncycastle/gpg/keybox/BlobType;->values()[Lorg/bouncycastle/gpg/keybox/BlobType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/gpg/keybox/Blob$1;->$SwitchMap$org$bouncycastle$gpg$keybox$BlobType:[I

    :try_start_0
    sget-object v1, Lorg/bouncycastle/gpg/keybox/BlobType;->EMPTY_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;

    invoke-virtual {v1}, Lorg/bouncycastle/gpg/keybox/BlobType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/bouncycastle/gpg/keybox/Blob$1;->$SwitchMap$org$bouncycastle$gpg$keybox$BlobType:[I

    sget-object v1, Lorg/bouncycastle/gpg/keybox/BlobType;->FIRST_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;

    invoke-virtual {v1}, Lorg/bouncycastle/gpg/keybox/BlobType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lorg/bouncycastle/gpg/keybox/Blob$1;->$SwitchMap$org$bouncycastle$gpg$keybox$BlobType:[I

    sget-object v1, Lorg/bouncycastle/gpg/keybox/BlobType;->X509_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;

    invoke-virtual {v1}, Lorg/bouncycastle/gpg/keybox/BlobType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lorg/bouncycastle/gpg/keybox/Blob$1;->$SwitchMap$org$bouncycastle$gpg$keybox$BlobType:[I

    sget-object v1, Lorg/bouncycastle/gpg/keybox/BlobType;->OPEN_PGP_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;

    invoke-virtual {v1}, Lorg/bouncycastle/gpg/keybox/BlobType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
