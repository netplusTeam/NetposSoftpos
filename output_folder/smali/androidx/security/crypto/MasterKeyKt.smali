.class public final Landroidx/security/crypto/MasterKeyKt;
.super Ljava/lang/Object;
.source "MasterKey.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a@\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u00a8\u0006\r"
    }
    d2 = {
        "MasterKey",
        "Landroidx/security/crypto/MasterKey;",
        "context",
        "Landroid/content/Context;",
        "keyAlias",
        "",
        "keyScheme",
        "Landroidx/security/crypto/MasterKey$KeyScheme;",
        "authenticationRequired",
        "",
        "userAuthenticationValidityDurationSeconds",
        "",
        "requestStrongBoxBacked",
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
.method public static final MasterKey(Landroid/content/Context;Ljava/lang/String;Landroidx/security/crypto/MasterKey$KeyScheme;ZIZ)Landroidx/security/crypto/MasterKey;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyAlias"    # Ljava/lang/String;
    .param p2, "keyScheme"    # Landroidx/security/crypto/MasterKey$KeyScheme;
    .param p3, "authenticationRequired"    # Z
    .param p4, "userAuthenticationValidityDurationSeconds"    # I
    .param p5, "requestStrongBoxBacked"    # Z

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyAlias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyScheme"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroidx/security/crypto/MasterKey$Builder;

    invoke-direct {v0, p0, p1}, Landroidx/security/crypto/MasterKey$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p2}, Landroidx/security/crypto/MasterKey$Builder;->setKeyScheme(Landroidx/security/crypto/MasterKey$KeyScheme;)Landroidx/security/crypto/MasterKey$Builder;

    move-result-object v0

    .line 44
    nop

    .line 45
    nop

    .line 43
    invoke-virtual {v0, p3, p4}, Landroidx/security/crypto/MasterKey$Builder;->setUserAuthenticationRequired(ZI)Landroidx/security/crypto/MasterKey$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p5}, Landroidx/security/crypto/MasterKey$Builder;->setRequestStrongBoxBacked(Z)Landroidx/security/crypto/MasterKey$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroidx/security/crypto/MasterKey$Builder;->build()Landroidx/security/crypto/MasterKey;

    move-result-object v0

    const-string v1, "Builder(context, keyAlia\u2026ngBoxBacked)\n    .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic MasterKey$default(Landroid/content/Context;Ljava/lang/String;Landroidx/security/crypto/MasterKey$KeyScheme;ZIZILjava/lang/Object;)Landroidx/security/crypto/MasterKey;
    .locals 3

    .line 33
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 35
    const-string p1, "_androidx_security_master_key_"

    .line 33
    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 36
    sget-object p2, Landroidx/security/crypto/MasterKey$KeyScheme;->AES256_GCM:Landroidx/security/crypto/MasterKey$KeyScheme;

    move-object p7, p2

    goto :goto_0

    .line 33
    :cond_1
    move-object p7, p2

    :goto_0
    and-int/lit8 p2, p6, 0x8

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 37
    move v1, v0

    goto :goto_1

    .line 33
    :cond_2
    move v1, p3

    :goto_1
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    .line 39
    invoke-static {}, Landroidx/security/crypto/MasterKey;->getDefaultAuthenticationValidityDurationSeconds()I

    move-result p4

    move v2, p4

    goto :goto_2

    .line 33
    :cond_3
    move v2, p4

    :goto_2
    and-int/lit8 p2, p6, 0x20

    if-eqz p2, :cond_4

    .line 40
    goto :goto_3

    .line 33
    :cond_4
    move v0, p5

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v1

    move p6, v2

    move p7, v0

    invoke-static/range {p2 .. p7}, Landroidx/security/crypto/MasterKeyKt;->MasterKey(Landroid/content/Context;Ljava/lang/String;Landroidx/security/crypto/MasterKey$KeyScheme;ZIZ)Landroidx/security/crypto/MasterKey;

    move-result-object p0

    return-object p0
.end method
