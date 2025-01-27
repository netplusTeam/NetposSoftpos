.class public final Lcom/danbamitale/epmslib/entities/KeyHolder$Companion;
.super Ljava/lang/Object;
.source "KeyHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danbamitale/epmslib/entities/KeyHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\n \u0006*\u0004\u0018\u00010\u00040\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004R\u0012\u0010\u0003\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/entities/KeyHolder$Companion;",
        "",
        "()V",
        "baseKey",
        "",
        "getClearMasterKey",
        "kotlin.jvm.PlatformType",
        "encryptedMasterKey",
        "setHostKeyComponents",
        "",
        "firstComponent",
        "secondComponent",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/danbamitale/epmslib/entities/KeyHolder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClearMasterKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "encryptedMasterKey"    # Ljava/lang/String;

    const-string v0, "encryptedMasterKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/danbamitale/epmslib/entities/KeyHolder;->access$getBaseKey$cp()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/danbamitale/epmslib/utils/TripleDES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setHostKeyComponents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "firstComponent"    # Ljava/lang/String;
    .param p2, "secondComponent"    # Ljava/lang/String;

    const-string v0, "firstComponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "secondComponent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p1, p2}, Lcom/danbamitale/epmslib/extensions/StringExtensionsKt;->xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/danbamitale/epmslib/entities/KeyHolder;->access$setBaseKey$cp(Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method
