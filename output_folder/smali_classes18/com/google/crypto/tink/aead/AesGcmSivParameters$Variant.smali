.class public final Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;
.super Ljava/lang/Object;
.source "AesGcmSivParameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesGcmSivParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variant"
.end annotation


# static fields
.field public static final CRUNCHY:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

.field public static final NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

.field public static final TINK:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    .line 37
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    .line 38
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->name:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->name:Ljava/lang/String;

    return-object v0
.end method
