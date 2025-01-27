.class final Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesHeaderInterceptorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "AppModule_ProvidesHeaderInterceptorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesHeaderInterceptorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesHeaderInterceptorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesHeaderInterceptorFactory;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesHeaderInterceptorFactory;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesHeaderInterceptorFactory$InstanceHolder;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesHeaderInterceptorFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesHeaderInterceptorFactory;
    .locals 1

    .line 32
    sget-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesHeaderInterceptorFactory$InstanceHolder;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesHeaderInterceptorFactory;

    return-object v0
.end method
