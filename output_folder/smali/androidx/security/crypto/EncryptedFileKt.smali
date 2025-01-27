.class public final Landroidx/security/crypto/EncryptedFileKt;
.super Ljava/lang/Object;
.source "EncryptedFile.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001aB\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0007\u00a8\u0006\r"
    }
    d2 = {
        "EncryptedFile",
        "Landroidx/security/crypto/EncryptedFile;",
        "context",
        "Landroid/content/Context;",
        "file",
        "Ljava/io/File;",
        "masterKey",
        "Landroidx/security/crypto/MasterKey;",
        "fileEncryptionScheme",
        "Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;",
        "keysetPrefName",
        "",
        "keysetAlias",
        "security-crypto-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final EncryptedFile(Landroid/content/Context;Ljava/io/File;Landroidx/security/crypto/MasterKey;Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;Ljava/lang/String;Ljava/lang/String;)Landroidx/security/crypto/EncryptedFile;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "masterKey"    # Landroidx/security/crypto/MasterKey;
    .param p3, "fileEncryptionScheme"    # Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;
    .param p4, "keysetPrefName"    # Ljava/lang/String;
    .param p5, "keysetAlias"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "masterKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileEncryptionScheme"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroidx/security/crypto/EncryptedFile$Builder;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/security/crypto/EncryptedFile$Builder;-><init>(Landroid/content/Context;Ljava/io/File;Landroidx/security/crypto/MasterKey;Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;)V

    move-object v1, v0

    .local v1, "$this$EncryptedFile_u24lambda_u240":Landroidx/security/crypto/EncryptedFile$Builder;
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-apply-EncryptedFileKt$EncryptedFile$1":I
    if-eqz p4, :cond_0

    invoke-virtual {v1, p4}, Landroidx/security/crypto/EncryptedFile$Builder;->setKeysetPrefName(Ljava/lang/String;)Landroidx/security/crypto/EncryptedFile$Builder;

    .line 46
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {v1, p5}, Landroidx/security/crypto/EncryptedFile$Builder;->setKeysetAlias(Ljava/lang/String;)Landroidx/security/crypto/EncryptedFile$Builder;

    .line 47
    :cond_1
    nop

    .line 44
    .end local v1    # "$this$EncryptedFile_u24lambda_u240":Landroidx/security/crypto/EncryptedFile$Builder;
    .end local v2    # "$i$a$-apply-EncryptedFileKt$EncryptedFile$1":I
    nop

    .line 47
    invoke-virtual {v0}, Landroidx/security/crypto/EncryptedFile$Builder;->build()Landroidx/security/crypto/EncryptedFile;

    move-result-object v0

    const-string v1, "Builder(context, file, m\u2026as(keysetAlias)\n}.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic EncryptedFile$default(Landroid/content/Context;Ljava/io/File;Landroidx/security/crypto/MasterKey;Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroidx/security/crypto/EncryptedFile;
    .locals 6

    .line 37
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 41
    sget-object p3, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->AES256_GCM_HKDF_4KB:Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    move-object v3, p3

    goto :goto_0

    .line 37
    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x10

    const/4 p7, 0x0

    if-eqz p3, :cond_1

    .line 42
    move-object v4, p7

    goto :goto_1

    .line 37
    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 p3, p6, 0x20

    if-eqz p3, :cond_2

    .line 43
    move-object v5, p7

    goto :goto_2

    .line 37
    :cond_2
    move-object v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/security/crypto/EncryptedFileKt;->EncryptedFile(Landroid/content/Context;Ljava/io/File;Landroidx/security/crypto/MasterKey;Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;Ljava/lang/String;Ljava/lang/String;)Landroidx/security/crypto/EncryptedFile;

    move-result-object p0

    return-object p0
.end method
