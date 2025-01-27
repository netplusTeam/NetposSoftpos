.class public Lcom/alcineo/softpos/ecnlaio;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final acileon:Ljava/lang/String; = "ecnlaio"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native acileon(Ljava/util/List;Lcom/alcineo/softpos/payment/model/EMVTags;)Lcom/alcineo/utils/tlv/TlvItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;",
            "Lcom/alcineo/softpos/payment/model/EMVTags;",
            ")",
            "Lcom/alcineo/utils/tlv/TlvItem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/payment/error/TlvItemNotFoundException;
        }
    .end annotation
.end method

.method public static native acileon(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/payment/model/EMVTags;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end method
