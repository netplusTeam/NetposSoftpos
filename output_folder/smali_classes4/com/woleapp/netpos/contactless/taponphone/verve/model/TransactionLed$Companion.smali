.class public final Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed$Companion;
.super Ljava/lang/Object;
.source "TransactionLed.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed$Companion;",
        "",
        "()V",
        "MODE1_ON",
        "",
        "getMODE1_ON",
        "()[I",
        "MODE2_ON",
        "getMODE2_ON",
        "app_fcmbeasypayDebug"
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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMODE1_ON()[I
    .locals 1

    .line 9
    invoke-static {}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;->access$getMODE1_ON$cp()[I

    move-result-object v0

    return-object v0
.end method

.method public final getMODE2_ON()[I
    .locals 1

    .line 10
    invoke-static {}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;->access$getMODE2_ON$cp()[I

    move-result-object v0

    return-object v0
.end method
