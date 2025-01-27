.class public final Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesAppDbFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvidesAppDbFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/database/AppDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesAppDbFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesAppDbFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesAppDbFactory;"
        }
    .end annotation

    .line 33
    .local p0, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesAppDbFactory;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesAppDbFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesAppDb(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule;

    invoke-virtual {v0, p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->providesAppDb(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/database/AppDatabase;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/database/AppDatabase;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesAppDbFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesAppDbFactory;->providesAppDb(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesAppDbFactory;->get()Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v0

    return-object v0
.end method
