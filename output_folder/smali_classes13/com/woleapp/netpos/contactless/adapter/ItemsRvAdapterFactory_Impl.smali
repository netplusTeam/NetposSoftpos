.class public final Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory_Impl;
.super Ljava/lang/Object;
.source "ItemsRvAdapterFactory_Impl.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;


# instance fields
.field private final delegateFactory:Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegateFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p1, "delegateFactory":Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;, "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory<Lcom/woleapp/netpos/contactless/model/AppCampaignModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory_Impl;->delegateFactory:Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;

    .line 22
    return-void
.end method

.method public static create(Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegateFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;)",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;",
            ">;"
        }
    .end annotation

    .line 33
    .local p0, "delegateFactory":Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;, "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory<Lcom/woleapp/netpos/contactless/model/AppCampaignModel;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory_Impl;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory_Impl;-><init>(Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;)V

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createOrderItemRvAdapter(ILcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;Lkotlin/jvm/functions/Function2;)Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;
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
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;"
        }
    .end annotation

    .line 28
    .local p2, "bindingInterface":Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;, "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface<Lcom/woleapp/netpos/contactless/model/AppCampaignModel;>;"
    .local p3, "onClick":Lkotlin/jvm/functions/Function2;, "Lkotlin/jvm/functions/Function2<-Landroid/view/View;-Lcom/woleapp/netpos/contactless/model/AppCampaignModel;Lkotlin/Unit;>;"
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory_Impl;->delegateFactory:Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter_Factory;->get(ILcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;Lkotlin/jvm/functions/Function2;)Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;

    move-result-object v0

    return-object v0
.end method
