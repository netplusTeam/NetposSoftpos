.class public final Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$Companion;
.super Ljava/lang/Object;
.source "ServiceAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u0002`\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$Companion;",
        "",
        "()V",
        "from",
        "Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "serviceClickListener",
        "Lkotlin/Function1;",
        "Lcom/woleapp/netpos/contactless/model/Service;",
        "",
        "Lcom/woleapp/netpos/contactless/adapter/ServiceClickListener;",
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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function1;)Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "serviceClickListener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/woleapp/netpos/contactless/model/Service;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceClickListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 46
    nop

    .line 47
    nop

    .line 44
    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;

    move-result-object v1

    const-string v2, "inflate(\n               \u2026 false,\n                )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    nop

    .line 43
    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;-><init>(Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    return-object v0
.end method
