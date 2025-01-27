.class public final Lcom/woleapp/netpos/contactless/network/NotificationRepository_Factory;
.super Ljava/lang/Object;
.source "NotificationRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/network/NotificationRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final notificationServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/NotificationService;",
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
            "notificationServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/NotificationService;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p1, "notificationServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/NotificationService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/network/NotificationRepository_Factory;->notificationServiceProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/network/NotificationRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notificationServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/NotificationService;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/network/NotificationRepository_Factory;"
        }
    .end annotation

    .line 31
    .local p0, "notificationServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/NotificationService;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/network/NotificationRepository_Factory;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/network/NotificationRepository_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/woleapp/netpos/contactless/network/NotificationService;)Lcom/woleapp/netpos/contactless/network/NotificationRepository;
    .locals 1
    .param p0, "notificationService"    # Lcom/woleapp/netpos/contactless/network/NotificationService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notificationService"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/woleapp/netpos/contactless/network/NotificationRepository;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/network/NotificationRepository;-><init>(Lcom/woleapp/netpos/contactless/network/NotificationService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/network/NotificationRepository;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/NotificationRepository_Factory;->notificationServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/NotificationService;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/network/NotificationRepository_Factory;->newInstance(Lcom/woleapp/netpos/contactless/network/NotificationService;)Lcom/woleapp/netpos/contactless/network/NotificationRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/network/NotificationRepository_Factory;->get()Lcom/woleapp/netpos/contactless/network/NotificationRepository;

    move-result-object v0

    return-object v0
.end method
