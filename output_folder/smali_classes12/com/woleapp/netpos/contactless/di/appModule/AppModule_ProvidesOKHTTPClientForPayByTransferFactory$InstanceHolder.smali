.class final Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesOKHTTPClientForPayByTransferFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "AppModule_ProvidesOKHTTPClientForPayByTransferFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesOKHTTPClientForPayByTransferFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesOKHTTPClientForPayByTransferFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesOKHTTPClientForPayByTransferFactory;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesOKHTTPClientForPayByTransferFactory;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesOKHTTPClientForPayByTransferFactory$InstanceHolder;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesOKHTTPClientForPayByTransferFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesOKHTTPClientForPayByTransferFactory;
    .locals 1

    .line 32
    sget-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesOKHTTPClientForPayByTransferFactory$InstanceHolder;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesOKHTTPClientForPayByTransferFactory;

    return-object v0
.end method
