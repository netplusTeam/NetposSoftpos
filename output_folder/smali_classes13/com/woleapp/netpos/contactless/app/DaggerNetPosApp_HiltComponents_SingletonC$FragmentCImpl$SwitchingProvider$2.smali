.class Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider$2;
.super Ljava/lang/Object;
.source "DaggerNetPosApp_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;->get()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 616
    .local p0, "this":Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider$2;, "Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider$2;"
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider$2;->this$0:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 622
    .local p0, "this":Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider$2;, "Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider$2;"
    .local p2, "bindingInterface":Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;, "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface<Lcom/woleapp/netpos/contactless/model/AppCampaignModel;>;"
    .local p3, "onClick":Lkotlin/jvm/functions/Function2;, "Lkotlin/jvm/functions/Function2<-Landroid/view/View;-Lcom/woleapp/netpos/contactless/model/AppCampaignModel;Lkotlin/Unit;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewAdapter;-><init>(ILcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method
