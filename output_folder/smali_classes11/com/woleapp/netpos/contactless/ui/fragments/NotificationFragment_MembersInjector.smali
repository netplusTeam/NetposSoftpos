.class public final Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment_MembersInjector;
.super Ljava/lang/Object;
.source "NotificationFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final rvAdapterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rvAdapterFactoryProvider",
            "gsonProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p1, "rvAdapterFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;>;"
    .local p2, "gsonProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/gson/Gson;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment_MembersInjector;->rvAdapterFactoryProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment_MembersInjector;->gsonProvider:Ljavax/inject/Provider;

    .line 27
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rvAdapterFactoryProvider",
            "gsonProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;",
            ">;"
        }
    .end annotation

    .line 31
    .local p0, "rvAdapterFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;>;"
    .local p1, "gsonProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/gson/Gson;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectGson(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;Lcom/google/gson/Gson;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "gson"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->gson:Lcom/google/gson/Gson;

    .line 49
    return-void
.end method

.method public static injectRvAdapterFactory(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;
    .param p1, "rvAdapterFactory"    # Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "rvAdapterFactory"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->rvAdapterFactory:Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;

    .line 44
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;)V
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment_MembersInjector;->rvAdapterFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment_MembersInjector;->injectRvAdapterFactory(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;Lcom/woleapp/netpos/contactless/adapter/ItemsRvAdapterFactory;)V

    .line 37
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment_MembersInjector;->gsonProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment_MembersInjector;->injectGson(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;Lcom/google/gson/Gson;)V

    .line 38
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "instance"
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;

    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment_MembersInjector;->injectMembers(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;)V

    return-void
.end method
