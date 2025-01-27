.class public final Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;
.super Ljava/lang/Object;
.source "GenericRecyclerViewAdapter_Factory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    .local p0, "this":Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;, "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static create()Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory<",
            "TT;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;-><init>()V

    return-object v0
.end method

.method public static newInstance(ILcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;Lkotlin/jvm/functions/Function2;)Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;
    .locals 1
    .param p0, "layoutId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutId",
            "bindingInterface",
            "onClick"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 35
    .local p1, "bindingInterface":Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;, "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface<TT;>;"
    .local p2, "onClick":Lkotlin/jvm/functions/Function2;, "Lkotlin/jvm/functions/Function2<-Landroid/view/View;-TT;Lkotlin/Unit;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;-><init>(ILcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method


# virtual methods
.method public get(ILcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;Lkotlin/jvm/functions/Function2;)Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;
    .locals 1
    .param p1, "layoutId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutId",
            "bindingInterface",
            "onClick"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;, "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory<TT;>;"
    .local p2, "bindingInterface":Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;, "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface<TT;>;"
    .local p3, "onClick":Lkotlin/jvm/functions/Function2;, "Lkotlin/jvm/functions/Function2<-Landroid/view/View;-TT;Lkotlin/Unit;>;"
    invoke-static {p1, p2, p3}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;->newInstance(ILcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;Lkotlin/jvm/functions/Function2;)Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;

    move-result-object v0

    return-object v0
.end method
