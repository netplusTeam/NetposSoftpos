.class final Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ServiceCImpl;
.super Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ServiceC;
.source "DaggerNetPosApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceCImpl"
.end annotation


# instance fields
.field private final serviceCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ServiceCImpl;

.field private final singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method private constructor <init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Landroid/app/Service;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "serviceParam"    # Landroid/app/Service;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "serviceParam"
        }
    .end annotation

    .line 867
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ServiceC;-><init>()V

    .line 865
    iput-object p0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ServiceCImpl;->serviceCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ServiceCImpl;

    .line 868
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ServiceCImpl;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 871
    return-void
.end method

.method synthetic constructor <init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Landroid/app/Service;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "x1"    # Landroid/app/Service;
    .param p3, "x2"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;

    .line 862
    invoke-direct {p0, p1, p2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ServiceCImpl;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Landroid/app/Service;)V

    return-void
.end method
