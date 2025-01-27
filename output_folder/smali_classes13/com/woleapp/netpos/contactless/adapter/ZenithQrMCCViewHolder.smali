.class public final Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ZenithQrMCCAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;",
        "(Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;)V",
        "getBinding",
        "()Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;",
        "bind",
        "",
        "zenithMerchantCategory",
        "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
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
.field public static final Companion:Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder$Companion;


# instance fields
.field private final binding:Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;->Companion:Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;)V
    .locals 1
    .param p1, "binding"    # Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;

    .line 43
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 42
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;-><init>(Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;)V
    .locals 2
    .param p1, "zenithMerchantCategory"    # Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;

    const-string v0, "zenithMerchantCategory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;->getMerchantCategoryDescription()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public final getBinding()Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCViewHolder;->binding:Lcom/woleapp/netpos/contactless/databinding/ItemMccBinding;

    return-object v0
.end method
