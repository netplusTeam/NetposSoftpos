.class public final enum Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;
.super Ljava/lang/Enum;
.source "EncryptedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/EncryptedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileEncryptionScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

.field public static final enum AES256_GCM_HKDF_4KB:Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;


# instance fields
.field private final mKeyTemplateName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;
    .locals 3

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    sget-object v1, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->AES256_GCM_HKDF_4KB:Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 124
    new-instance v0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    const-string v1, "AES256_GCM_HKDF_4KB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->AES256_GCM_HKDF_4KB:Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    .line 115
    invoke-static {}, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->$values()[Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    move-result-object v0

    sput-object v0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->$VALUES:[Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "keyTemplateName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-object p3, p0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->mKeyTemplateName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 115
    const-class v0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    return-object v0
.end method

.method public static values()[Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;
    .locals 1

    .line 115
    sget-object v0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->$VALUES:[Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    invoke-virtual {v0}, [Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    return-object v0
.end method


# virtual methods
.method getKeyTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->mKeyTemplateName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplates;->get(Ljava/lang/String;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method
