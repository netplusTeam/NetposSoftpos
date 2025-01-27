.class public final Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OrderItemClickListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BINDING:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000*\u0008\u0008\u0001\u0010\u0001*\u00020\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0005J\'\u0010\u0008\u001a\u00020\t\"\u0004\u0008\u0002\u0010\n2\u0006\u0010\u000b\u001a\u0002H\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\n0\r\u00a2\u0006\u0002\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;",
        "BINDING",
        "Landroidx/databinding/ViewDataBinding;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "view",
        "(Landroidx/databinding/ViewDataBinding;)V",
        "getView",
        "()Landroidx/databinding/ViewDataBinding;",
        "bind",
        "",
        "T",
        "item",
        "bindingInterface",
        "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;",
        "(Ljava/lang/Object;Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;)V",
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


# instance fields
.field private final view:Landroidx/databinding/ViewDataBinding;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;)V
    .locals 1
    .param p1, "view"    # Landroidx/databinding/ViewDataBinding;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;->view:Landroidx/databinding/ViewDataBinding;

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/Object;Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "bindingInterface"    # Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "bindingInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;->view:Landroidx/databinding/ViewDataBinding;

    invoke-interface {p2, p1, v0}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;->bindData(Ljava/lang/Object;Landroidx/databinding/ViewDataBinding;)V

    .line 34
    return-void
.end method

.method public final getView()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter$ViewHolder;->view:Landroidx/databinding/ViewDataBinding;

    return-object v0
.end method
