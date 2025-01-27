.class final Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForFlutterwaveFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "AppModule_ProvidesBaseUrlForFlutterwaveFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForFlutterwaveFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForFlutterwaveFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForFlutterwaveFactory;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForFlutterwaveFactory;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForFlutterwaveFactory$InstanceHolder;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForFlutterwaveFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForFlutterwaveFactory;
    .locals 1

    .line 31
    sget-object v0, Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForFlutterwaveFactory$InstanceHolder;->INSTANCE:Lcom/woleapp/netpos/contactless/di/appModule/AppModule_ProvidesBaseUrlForFlutterwaveFactory;

    return-object v0
.end method
