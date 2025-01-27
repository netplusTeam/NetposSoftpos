.class public final Lcom/dsofttech/dprefs/utils/exceptions/DPrefsKeyAlreadyExistsException;
.super Lcom/dsofttech/dprefs/utils/exceptions/DPrefsException;
.source "DPrefsKeyAlreadyExistsException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dsofttech/dprefs/utils/exceptions/DPrefsKeyAlreadyExistsException;",
        "Lcom/dsofttech/dprefs/utils/exceptions/DPrefsException;",
        "()V",
        "DPrefs_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    const-string v0, "Key already exist, kindly change the key to a new unique set of character string"

    invoke-direct {p0, v0}, Lcom/dsofttech/dprefs/utils/exceptions/DPrefsException;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method
