.class public final Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ServiceAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\'\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u0008\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;",
        "serviceClickListener",
        "Lkotlin/Function1;",
        "Lcom/woleapp/netpos/contactless/model/Service;",
        "",
        "Lcom/woleapp/netpos/contactless/adapter/ServiceClickListener;",
        "(Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;Lkotlin/jvm/functions/Function1;)V",
        "bind",
        "service",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$Companion;


# instance fields
.field private final binding:Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;

.field private final serviceClickListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/woleapp/netpos/contactless/model/Service;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$_S6qm8gLvevWsFD6Pe5B4h-9mFI(Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;Lcom/woleapp/netpos/contactless/model/Service;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;->bind$lambda-0(Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;Lcom/woleapp/netpos/contactless/model/Service;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;->Companion:Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "binding"    # Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;
    .param p2, "serviceClickListener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/woleapp/netpos/contactless/model/Service;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;

    .line 38
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;->serviceClickListener:Lkotlin/jvm/functions/Function1;

    .line 36
    return-void
.end method

.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;-><init>(Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final bind$lambda-0(Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;Lcom/woleapp/netpos/contactless/model/Service;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;
    .param p1, "$service"    # Lcom/woleapp/netpos/contactless/model/Service;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;->serviceClickListener:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/woleapp/netpos/contactless/model/Service;)V
    .locals 2
    .param p1, "service"    # Lcom/woleapp/netpos/contactless/model/Service;

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;->serviceIconCard:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;Lcom/woleapp/netpos/contactless/model/Service;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;->executePendingBindings()V

    .line 56
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;->service:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/Service;->getServiceName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutServiceItemBinding;->serviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/Service;->getServiceImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    return-void
.end method
