.class public final Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository_Factory;
.super Ljava/lang/Object;
.source "ContactlessQrPaymentRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final qrPaymentServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/QrPaymentService;",
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
            "qrPaymentServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/QrPaymentService;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p1, "qrPaymentServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/QrPaymentService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository_Factory;->qrPaymentServiceProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qrPaymentServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/network/QrPaymentService;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository_Factory;"
        }
    .end annotation

    .line 32
    .local p0, "qrPaymentServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/network/QrPaymentService;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository_Factory;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/woleapp/netpos/contactless/network/QrPaymentService;)Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;
    .locals 1
    .param p0, "qrPaymentService"    # Lcom/woleapp/netpos/contactless/network/QrPaymentService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qrPaymentService"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;-><init>(Lcom/woleapp/netpos/contactless/network/QrPaymentService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository_Factory;->qrPaymentServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/network/QrPaymentService;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository_Factory;->newInstance(Lcom/woleapp/netpos/contactless/network/QrPaymentService;)Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository_Factory;->get()Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;

    move-result-object v0

    return-object v0
.end method
