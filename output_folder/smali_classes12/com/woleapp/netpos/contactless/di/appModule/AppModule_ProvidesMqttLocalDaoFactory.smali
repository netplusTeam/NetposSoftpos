.class public final Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMqttLocalDaoFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvidesMqttLocalDaoFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;",
        ">;"
    }
.end annotation


# instance fields
.field private final appDatabaseProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/database/AppDatabase;",
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
            "appDatabaseProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/database/AppDatabase;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "appDatabaseProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/database/AppDatabase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMqttLocalDaoFactory;->appDatabaseProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMqttLocalDaoFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appDatabaseProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/database/AppDatabase;",
            ">;)",
            "Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMqttLocalDaoFactory;"
        }
    .end annotation

    .line 34
    .local p0, "appDatabaseProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/database/AppDatabase;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMqttLocalDaoFactory;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMqttLocalDaoFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesMqttLocalDao(Lcom/woleapp/netpos/contactless/database/AppDatabase;)Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;
    .locals 1
    .param p0, "appDatabase"    # Lcom/woleapp/netpos/contactless/database/AppDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appDatabase"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule;

    invoke-virtual {v0, p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->providesMqttLocalDao(Lcom/woleapp/netpos/contactless/database/AppDatabase;)Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMqttLocalDaoFactory;->appDatabaseProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/database/AppDatabase;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMqttLocalDaoFactory;->providesMqttLocalDao(Lcom/woleapp/netpos/contactless/database/AppDatabase;)Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMqttLocalDaoFactory;->get()Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    move-result-object v0

    return-object v0
.end method
