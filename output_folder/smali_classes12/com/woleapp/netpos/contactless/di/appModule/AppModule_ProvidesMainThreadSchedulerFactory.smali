.class public final Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMainThreadSchedulerFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvidesMainThreadSchedulerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMainThreadSchedulerFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lio/reactivex/Scheduler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMainThreadSchedulerFactory;
    .locals 1

    .line 25
    invoke-static {}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMainThreadSchedulerFactory$InstanceHolder;->access$000()Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMainThreadSchedulerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providesMainThreadScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 29
    sget-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule;->providesMainThreadScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    return-object v0
.end method


# virtual methods
.method public get()Lio/reactivex/Scheduler;
    .locals 1

    .line 21
    invoke-static {}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMainThreadSchedulerFactory;->providesMainThreadScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesMainThreadSchedulerFactory;->get()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
