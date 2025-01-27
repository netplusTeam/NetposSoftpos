.class public final Lcom/danbamitale/epmslib/entities/KeyHolderKt;
.super Ljava/lang/Object;
.source "KeyHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0004\"\u0015\u0010\u0007\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0004\u00a8\u0006\t"
    }
    d2 = {
        "clearPinKey",
        "",
        "Lcom/danbamitale/epmslib/entities/KeyHolder;",
        "getClearPinKey",
        "(Lcom/danbamitale/epmslib/entities/KeyHolder;)Ljava/lang/String;",
        "clearSessionKey",
        "getClearSessionKey",
        "nibssClearMasterKey",
        "getNibssClearMasterKey",
        "epmslib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getClearPinKey(Lcom/danbamitale/epmslib/entities/KeyHolder;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$clearPinKey"    # Lcom/danbamitale/epmslib/entities/KeyHolder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/KeyHolder;->getPinKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/danbamitale/epmslib/entities/KeyHolderKt;->getNibssClearMasterKey(Lcom/danbamitale/epmslib/entities/KeyHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/utils/TripleDES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "decrypt(this.pinKey, nibssClearMasterKey)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getClearSessionKey(Lcom/danbamitale/epmslib/entities/KeyHolder;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$clearSessionKey"    # Lcom/danbamitale/epmslib/entities/KeyHolder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/KeyHolder;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/danbamitale/epmslib/entities/KeyHolderKt;->getNibssClearMasterKey(Lcom/danbamitale/epmslib/entities/KeyHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/utils/TripleDES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "decrypt(this.sessionKey, nibssClearMasterKey)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getNibssClearMasterKey(Lcom/danbamitale/epmslib/entities/KeyHolder;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$nibssClearMasterKey"    # Lcom/danbamitale/epmslib/entities/KeyHolder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/danbamitale/epmslib/entities/KeyHolder;->Companion:Lcom/danbamitale/epmslib/entities/KeyHolder$Companion;

    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/KeyHolder;->getMasterKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danbamitale/epmslib/entities/KeyHolder$Companion;->getClearMasterKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyHolder.getClearMasterKey(masterKey)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
