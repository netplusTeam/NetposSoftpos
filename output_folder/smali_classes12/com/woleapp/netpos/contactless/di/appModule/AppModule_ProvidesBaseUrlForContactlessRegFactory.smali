.class public final Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForContactlessRegFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvidesBaseUrlForContactlessRegFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForContactlessRegFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForContactlessRegFactory;
    .locals 1

    .line 24
    invoke-static {}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForContactlessRegFactory$InstanceHolder;->access$000()Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForContactlessRegFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providesBaseUrlForContactlessReg()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->providesBaseUrlForContactlessReg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForContactlessRegFactory;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-static {}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForContactlessRegFactory;->providesBaseUrlForContactlessReg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
