.class public final enum Lorg/bouncycastle/gpg/keybox/BlobType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/gpg/keybox/BlobType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/gpg/keybox/BlobType;

.field public static final enum EMPTY_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;

.field public static final enum FIRST_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;

.field public static final enum OPEN_PGP_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;

.field public static final enum X509_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;


# instance fields
.field private final byteValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/bouncycastle/gpg/keybox/BlobType;

    const-string v1, "EMPTY_BLOB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/bouncycastle/gpg/keybox/BlobType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/gpg/keybox/BlobType;->EMPTY_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;

    new-instance v1, Lorg/bouncycastle/gpg/keybox/BlobType;

    const-string v3, "FIRST_BLOB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/bouncycastle/gpg/keybox/BlobType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/bouncycastle/gpg/keybox/BlobType;->FIRST_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;

    new-instance v3, Lorg/bouncycastle/gpg/keybox/BlobType;

    const-string v5, "OPEN_PGP_BLOB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/bouncycastle/gpg/keybox/BlobType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/bouncycastle/gpg/keybox/BlobType;->OPEN_PGP_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;

    new-instance v5, Lorg/bouncycastle/gpg/keybox/BlobType;

    const-string v7, "X509_BLOB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lorg/bouncycastle/gpg/keybox/BlobType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/bouncycastle/gpg/keybox/BlobType;->X509_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/bouncycastle/gpg/keybox/BlobType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/bouncycastle/gpg/keybox/BlobType;->$VALUES:[Lorg/bouncycastle/gpg/keybox/BlobType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/bouncycastle/gpg/keybox/BlobType;->byteValue:I

    return-void
.end method

.method public static fromByte(I)Lorg/bouncycastle/gpg/keybox/BlobType;
    .locals 5

    invoke-static {}, Lorg/bouncycastle/gpg/keybox/BlobType;->values()[Lorg/bouncycastle/gpg/keybox/BlobType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/bouncycastle/gpg/keybox/BlobType;->byteValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown blob type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/gpg/keybox/BlobType;
    .locals 1

    const-class v0, Lorg/bouncycastle/gpg/keybox/BlobType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/gpg/keybox/BlobType;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/gpg/keybox/BlobType;
    .locals 1

    sget-object v0, Lorg/bouncycastle/gpg/keybox/BlobType;->$VALUES:[Lorg/bouncycastle/gpg/keybox/BlobType;

    invoke-virtual {v0}, [Lorg/bouncycastle/gpg/keybox/BlobType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/gpg/keybox/BlobType;

    return-object v0
.end method


# virtual methods
.method public getByteValue()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/gpg/keybox/BlobType;->byteValue:I

    return v0
.end method
