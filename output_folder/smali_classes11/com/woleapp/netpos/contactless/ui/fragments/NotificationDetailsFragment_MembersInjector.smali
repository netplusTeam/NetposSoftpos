.class public final Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment_MembersInjector;
.super Ljava/lang/Object;
.source "NotificationDetailsFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gsonProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p1, "gsonProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/gson/Gson;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment_MembersInjector;->gsonProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gsonProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;",
            ">;"
        }
    .end annotation

    .line 25
    .local p0, "gsonProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/gson/Gson;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment_MembersInjector;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectGson(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;Lcom/google/gson/Gson;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;
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

    .line 35
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->gson:Lcom/google/gson/Gson;

    .line 36
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;)V
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment_MembersInjector;->gsonProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment_MembersInjector;->injectGson(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;Lcom/google/gson/Gson;)V

    .line 31
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

    .line 11
    check-cast p1, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;

    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment_MembersInjector;->injectMembers(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;)V

    return-void
.end method
