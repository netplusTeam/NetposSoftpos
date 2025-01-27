.class public final Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$Companion;
.super Ljava/lang/Object;
.source "UtilitiesPaymentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;",
        "serviceId",
        "",
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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(I)Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;
    .locals 2
    .param p1, "serviceId"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "service_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;-><init>()V

    .line 53
    .local v1, "electricityPaymentFragment":Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;
    invoke-virtual {v1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method
